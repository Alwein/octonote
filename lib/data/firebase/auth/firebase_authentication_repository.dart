import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart' as apple;

class FirebaseAuthenticationRepositoryImpl implements AuthenticationRepository {
  FirebaseAuthenticationRepositoryImpl({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @visibleForTesting
  bool isWeb = kIsWeb;

  @override
  Stream<OctoUser> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? const OctoUser.empty() : firebaseUser.toUser;
      return user;
    });
  }

  @override
  OctoUser get currentUser {
    return _firebaseAuth.currentUser?.toUser ?? const OctoUser.empty();
  }

  @override
  Future<Either<Unit, AuthFailure>> sendVerificationEmail() async {
    try {
      final firebase_auth.User? user = _firebaseAuth.currentUser;
      if (user == null) {
        return const Right(AuthFailure.userMismatch());
      } else {
        if (!user.emailVerified && user.email != null) {
          await user.sendEmailVerification();
        }
      }
      return const Left(unit);
    } on Exception catch (_) {
      return const Right(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Right(e.toAuthFailure);
    }
  }

  Future<Either<Unit, AuthFailure>> signInAsAnonym() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Right(e.toAuthFailure);
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> changePassword({
    required String newPassword,
    required String oldPassword,
    required String email,
  }) async {
    final firebase_auth.User user = _firebaseAuth.currentUser!;
    try {
      await user.updatePassword(newPassword);
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      print("error changing password $e");
      if (e.code.contains('requires-recent-login')) {
        try {
          final firebase_auth.AuthCredential credential =
              firebase_auth.EmailAuthProvider.credential(email: email, password: oldPassword);
          await user.reauthenticateWithCredential(credential);
          await user.updatePassword(newPassword);
          return const Left(unit);
        } on firebase_auth.FirebaseAuthException catch (e) {
          return Right(e.toAuthFailure);
        }
      } else {
        return Right(e.toAuthFailure);
      }
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> registerWithEmailAndPassword({
    required String email,
    required String password,
    bool isLinkWithCredentials = false,
  }) async {
    firebase_auth.User previousUser;
    try {
      if (isLinkWithCredentials) {
        // previous user cannot be null for linking with credentials
        previousUser = _firebaseAuth.currentUser!;

        final authCreds =
            firebase_auth.EmailAuthProvider.credential(email: email, password: password);

        await previousUser.linkWithCredential(authCreds);
      } else {
        await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Right(e.toAuthFailure);
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return const Right(AuthFailure.invalidPasswordAndEmailCombination());
      } else {
        return Right(e.toAuthFailure);
      }
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> signInWithGoogle({
    bool isLinkWithCredentials = false,
    bool? isTestWeb,
  }) async {
    try {
      firebase_auth.User currentUser;

      if (isTestWeb ?? isWeb) {
        final authProvider = firebase_auth.GoogleAuthProvider();
        // ignore: unused_local_variable
        final firebase_auth.UserCredential userCredential =
            await _firebaseAuth.signInWithPopup(authProvider);
        return const Left(unit);
      }

      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Right(AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      if (isLinkWithCredentials) {
        currentUser = _firebaseAuth.currentUser!;
        final relinkCred = firebase_auth.GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken,
        );
        await currentUser.linkWithCredential(relinkCred);
      } else {
        final authCredential = firebase_auth.GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken,
        );

        await _firebaseAuth.signInWithCredential(authCredential);
      }
      return const Left(unit);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Right(e.toAuthFailure);
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> signInWithApple({bool reauth = false}) async {
    try {
      final credential = await apple.SignInWithApple.getAppleIDCredential(
        scopes: [
          apple.AppleIDAuthorizationScopes.email,
          apple.AppleIDAuthorizationScopes.fullName,
        ],
        // webAuthenticationOptions: apple.WebAuthenticationOptions(
        //   clientId: appleClientId,
        //   redirectUri: Uri.parse(appleRedirectUri),
        // ),
      );
      // basically appleProvider is the String "apple.com"
      const appleProvider = "apple.com";
      final oAuthProvider = firebase_auth.OAuthProvider(appleProvider);
      final newCredentials = oAuthProvider.credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      if (reauth) {
        final currentUser = _firebaseAuth.currentUser!;
        await currentUser.linkWithCredential(newCredentials);
      } else {
        // ignore: unused_local_variable
        final firebase_auth.UserCredential userCreds =
            await _firebaseAuth.signInWithCredential(newCredentials);
      }
      return const Left(unit);
    } on apple.SignInWithAppleException catch (e) {
      if (e is apple.SignInWithAppleNotSupportedException) {
        return const Right(AuthFailure.wrongIosVersion());
      } else if (e is apple.SignInWithAppleAuthorizationException &&
          e.code == apple.AuthorizationErrorCode.canceled) {
        return const Right(AuthFailure.cancelledByUser());
      }
      return const Right(AuthFailure.serverError());
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Right(AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return const Right(AuthFailure.invalidEmail());
      }
      if (e.code == 'operation-not-allowed') {
        return const Right(AuthFailure.operationNotAllowed());
      }
      if (e.code == 'user-disabled') {
        return const Right(AuthFailure.userDisabled());
      } else {
        print("FIREBASE ERROR:" + "$e");
        return const Right(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<Unit, AuthFailure>> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
      return const Left(unit);
    } on Exception {
      return const Right(AuthFailure.logoutFailure());
    }
  }
}

extension on firebase_auth.User {
  OctoUser get toUser {
    return OctoUser(
      uid: uid,
      email: email,
      userName: displayName,
      photoURL: photoURL,
    );
  }
}

extension on firebase_auth.FirebaseAuthException {
  AuthFailure get toAuthFailure {
    if (code == 'auth/user-not-found' || code == 'user-not-found') {
      return const AuthFailure.userNotFound();
    } else if (code == 'auth/invalid-email' || code == 'invalid-email') {
      return const AuthFailure.invalidEmail();
    } else if (code == 'user-mismatch') {
      return const AuthFailure.userMismatch();
    } else if (code == 'invalid-credential') {
      return const AuthFailure.invalidCredential();
    } else if (code == 'wrong-password') {
      return const AuthFailure.wrongPassword();
    } else if (code == 'weak-password') {
      return const AuthFailure.weakPassword();
    } else if (code == 'email-already-in-use') {
      return const AuthFailure.emailAlreadyInUse();
    } else if (code == 'operation-not-allowed') {
      return const AuthFailure.operationNotAllowed();
    } else if (code == 'week-password') {
      return const AuthFailure.weakPassword();
    } else if (code == 'user-disabled') {
      return const AuthFailure.userDisabled();
    } else if (code == 'provider-already-linked') {
      return const AuthFailure.providerAlreadyLinked();
    } else if (code == 'credential-already-in-use' ||
        code == 'account-exists-with-different-credential') {
      return const AuthFailure.credentialAlreadyInUse();
    } else {
      return const AuthFailure.serverError();
    }
  }
}
