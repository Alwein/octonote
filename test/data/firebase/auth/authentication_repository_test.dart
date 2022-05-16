// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octonote/application/models/auth_failure.dart';
import 'package:octonote/data/firebase/auth/firebase_authentication_repository.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/authentication/authentication_repository.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart' as apple;

import '../../../test_helpers/test_helpers.dart';

const _mockFirebaseUserUid = 'mock-uid';
const _mockFirebaseUserEmail = 'mock-email';

mixin LegacyEquality {
  @override
  bool operator ==(dynamic other) => false;

  @override
  int get hashCode => 0;
}

class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class MockFirebaseUser extends Mock implements firebase_auth.User {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

// ignore: avoid_implementing_value_types
class MockGoogleSignInAccount extends Mock with LegacyEquality implements GoogleSignInAccount {}

class MockGoogleSignInAuthentication extends Mock implements GoogleSignInAuthentication {}

class MockUserCredential extends Mock implements firebase_auth.UserCredential {}

class FakeAuthCredential extends Fake implements firebase_auth.AuthCredential {}

class FakeAuthProvider extends Fake implements AuthProvider {}

void main() {
  setUp(() async {
    await initServices();
    MethodChannelFirebase.channel.setMockMethodCallHandler((call) async {
      if (call.method == 'Firebase#initializeCore') {
        return [
          {
            'name': defaultFirebaseAppName,
            'options': {
              'apiKey': '123',
              'appId': '123',
              'messagingSenderId': '123',
              'projectId': '123',
            },
            'pluginConstants': const <String, String>{},
          }
        ];
      }

      if (call.method == 'Firebase#initializeApp') {
        final arguments = call.arguments as Map<String, dynamic>;
        return <String, dynamic>{
          'name': arguments['appName'],
          'options': arguments['options'],
          'pluginConstants': const <String, String>{},
        };
      }

      return null;
    });

    Firebase.initializeApp();
  });

  const email = 'test@gmail.com';
  const password = 't0ps3cret42';
  const user = OctoUser(
    uid: _mockFirebaseUserUid,
    email: _mockFirebaseUserEmail,
  );

  group('AuthenticationRepository', () {
    late firebase_auth.FirebaseAuth firebaseAuth;
    late GoogleSignIn googleSignIn;
    late AuthenticationRepository authenticationRepository;

    setUpAll(() {
      registerFallbackValue(FakeAuthCredential());
      registerFallbackValue(FakeAuthProvider());
    });

    setUp(() {
      firebaseAuth = MockFirebaseAuth();
      googleSignIn = MockGoogleSignIn();
      authenticationRepository = FirebaseAuthenticationRepositoryImpl(
        firebaseAuth: firebaseAuth,
        googleSignIn: googleSignIn,
      );
    });

    test('should creates FirebaseAuth instance internally when not injected', () {
      expect(() => FirebaseAuthenticationRepositoryImpl(), isNot(throwsException));
    });

    group('email & password', () {
      setUp(() {
        when(
          () => firebaseAuth.createUserWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) => Future.value(MockUserCredential()));
      });

      group('signUp', () {
        test('calls createUserWithEmailAndPassword', () async {
          await authenticationRepository.registerWithEmailAndPassword(
            email: email,
            password: password,
          );
          verify(
            () => firebaseAuth.createUserWithEmailAndPassword(
              email: email,
              password: password,
            ),
          ).called(1);
        });

        test('should succeeds when registerWithEmailAndPassword succeeds', () async {
          expect(
            authenticationRepository.registerWithEmailAndPassword(email: email, password: password),
            completes,
          );
        });

        test('should return a AuthFailure with emailAlreadyInUse" ', () async {
          when(
            () => firebaseAuth.createUserWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenThrow(firebase_auth.FirebaseAuthException(code: 'email-already-in-use'));
          final expectedError = await authenticationRepository.registerWithEmailAndPassword(
            email: email,
            password: password,
          );
          expect(
            expectedError,
            const Right(AuthFailure.emailAlreadyInUse()),
          );
        });
      });

      group('signIn', () {
        test('should calls createUserWithEmailAndPassword', () async {
          await authenticationRepository.registerWithEmailAndPassword(
            email: email,
            password: password,
          );
          verify(
            () => firebaseAuth.createUserWithEmailAndPassword(
              email: email,
              password: password,
            ),
          ).called(1);
        });

        test('should succeeds when registerWithEmailAndPassword succeeds', () async {
          expect(
            authenticationRepository.registerWithEmailAndPassword(email: email, password: password),
            completes,
          );
        });

        test('should throws AuthFailure with emailAlreadyInUse', () async {
          when(
            () => firebaseAuth.createUserWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenThrow(firebase_auth.FirebaseAuthException(code: 'email-already-in-use'));
          final expectedError = await authenticationRepository.registerWithEmailAndPassword(
            email: email,
            password: password,
          );
          expect(
            expectedError,
            const Right(AuthFailure.emailAlreadyInUse()),
          );
        });
      });
    });

    group('sendEmailVerification', () {
      test('should succeeds when user is valid', () async {
        final firebaseUser = MockFirebaseUser();
        when(() => firebaseUser.uid).thenReturn(_mockFirebaseUserUid);
        when(() => firebaseUser.email).thenReturn(_mockFirebaseUserEmail);
        when(() => firebaseUser.photoURL).thenReturn(null);
        when(() => firebaseUser.isAnonymous).thenReturn(false);
        when(() => firebaseUser.emailVerified).thenReturn(false);
        when(() => firebaseAuth.currentUser).thenAnswer((_) => firebaseUser);
        when(() => firebaseUser.sendEmailVerification()).thenAnswer((_) => Future.value());
        await authenticationRepository.sendVerificationEmail();
        verify(
          () => firebaseUser.sendEmailVerification(),
        ).called(1);
      });

      test('should return AuthFailure with userMismatch when user is null', () async {
        when(() => firebaseAuth.currentUser).thenAnswer((_) => null);
        final expectedError = await authenticationRepository.sendVerificationEmail();
        expect(
          expectedError,
          const Right(AuthFailure.userMismatch()),
        );
      });
    });

    group('resetPassword', () {
      setUp(() {
        when(
          () => firebaseAuth.sendPasswordResetEmail(
            email: any(named: 'email'),
          ),
        ).thenAnswer((_) => Future.value());
      });

      test('should calls proprely', () async {
        await authenticationRepository.resetPassword(
          email: email,
        );
        verify(
          () => firebaseAuth.sendPasswordResetEmail(
            email: email,
          ),
        ).called(1);
      });

      test('should succeeds when email is valid', () async {
        expect(
          authenticationRepository.resetPassword(
            email: email,
          ),
          completes,
        );
      });

      test('should fail when resetPassword fails', () async {
        when(
          () => firebaseAuth.sendPasswordResetEmail(
            email: any(named: 'email'),
          ),
        ).thenThrow(firebase_auth.FirebaseAuthException(code: 'any'));
        final expectedError = await authenticationRepository.resetPassword(email: email);
        expect(
          expectedError,
          const Right(AuthFailure.serverError()),
        );
      });
    });

    group('changePassword', () {
      test('should calls updatePassword', () async {
        const newPassword = 'v3r7t0ps3cret42';
        final firebaseUser = MockFirebaseUser();
        when(() => firebaseUser.uid).thenReturn(_mockFirebaseUserUid);
        when(() => firebaseUser.email).thenReturn(_mockFirebaseUserEmail);
        when(() => firebaseUser.photoURL).thenReturn(null);
        when(() => firebaseUser.isAnonymous).thenReturn(false);
        when(() => firebaseUser.emailVerified).thenReturn(false);
        when(() => firebaseAuth.currentUser).thenAnswer((_) => firebaseUser);
        when(() => firebaseUser.updatePassword(newPassword)).thenAnswer((_) => Future.value());
        await authenticationRepository.changePassword(
          email: email,
          oldPassword: password,
          newPassword: newPassword,
        );
        verify(
          () => firebaseUser.updatePassword(newPassword),
        ).called(1);
      });
    });

    group('sign in with apple', () {
      tearDown(() {
        apple.SignInWithApple.channel.setMockMethodCallHandler(null);
      });

      test('should succeed when signIWithApple succeed', () async {
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) => Future.value(MockUserCredential()));
        apple.SignInWithApple.channel.setMockMethodCallHandler((methodCall) async {
          if (methodCall.method == 'performAuthorizationRequest') {
            return <dynamic, dynamic>{
              'type': 'appleid',
              'userIdentifier': 'some userIdentifier',
              'givenName': 'some givenName',
              'familyName': 'some familyName',
              'email': 'some@email.com',
              'identityToken': 'identityToken',
              'authorizationCode': 'authorizationCode',
            };
          }
          throw Exception('Unexpected method');
        });
        final result = await authenticationRepository.signInWithApple();
        expect(authenticationRepository.signInWithApple(), completes);
        expect(result, const Left(unit));
      });

      test('should fail when signIWithApple fails', () async {
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) => Future.value(MockUserCredential()));
        apple.SignInWithApple.channel.setMockMethodCallHandler((methodCall) async {
          if (methodCall.method == 'performAuthorizationRequest') {}
          throw Exception('Unexpected method');
        });
        final result = await authenticationRepository.signInWithApple();
        expect(result, const Right(AuthFailure.serverError()));
      });

      test('should fail when signIWithApple succeed and firebase fails', () async {
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenThrow(firebase_auth.FirebaseAuthException(code: 'any'));
        apple.SignInWithApple.channel.setMockMethodCallHandler((methodCall) async {
          if (methodCall.method == 'performAuthorizationRequest') {
            return <dynamic, dynamic>{
              'type': 'appleid',
              'userIdentifier': 'some userIdentifier',
              'givenName': 'some givenName',
              'familyName': 'some familyName',
              'email': 'some@email.com',
              'identityToken': 'identityToken',
              'authorizationCode': 'authorizationCode',
            };
          }
          throw Exception('Unexpected method');
        });
        final result = await authenticationRepository.signInWithApple();
        expect(result, const Right(AuthFailure.serverError()));
      });
    });

    group('signInWithGoogle', () {
      const accessToken = 'access-token';
      const idToken = 'id-token';

      setUp(() {
        final googleSignInAuthentication = MockGoogleSignInAuthentication();
        final googleSignInAccount = MockGoogleSignInAccount();
        when(() => googleSignInAuthentication.accessToken).thenReturn(accessToken);
        when(() => googleSignInAuthentication.idToken).thenReturn(idToken);
        when(() => googleSignInAccount.authentication)
            .thenAnswer((_) async => googleSignInAuthentication);
        when(() => googleSignIn.signIn()).thenAnswer((_) async => googleSignInAccount);
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) => Future.value(MockUserCredential()));
        when(() => firebaseAuth.signInWithPopup(any()))
            .thenAnswer((_) => Future.value(MockUserCredential()));
      });

      test('should calls signIn authentication, and signInWithCredential', () async {
        await authenticationRepository.signInWithGoogle();
        verify(() => googleSignIn.signIn()).called(1);
        verify(() => firebaseAuth.signInWithCredential(any())).called(1);
      });

      test('signInWithPopup should be called on web', () async {
        await expectLater(
          (authenticationRepository as FirebaseAuthenticationRepositoryImpl)
              .signInWithGoogle(isTestWeb: true),
          completes,
        );
        verifyNever(() => googleSignIn.signIn());
        verify(() => firebaseAuth.signInWithPopup(any())).called(1);
      });

      test('should succeeds when signIn succeeds', () {
        expect(authenticationRepository.signInWithGoogle(), completes);
      });

      test('should return a AuthFailure with serverError when exception occurs', () async {
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenThrow(firebase_auth.FirebaseAuthException(code: 'any'));
        expectLater(
          await authenticationRepository.signInWithGoogle(),
          const Right(AuthFailure.serverError()),
        );
      });
    });

    group('logInWithEmailAndPassword', () {
      setUp(() {
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) => Future.value(MockUserCredential()));
      });

      test('should calls signInWithEmailAndPassword', () async {
        await authenticationRepository.logInWithEmailAndPassword(
          email: email,
          password: password,
        );
        verify(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password,
          ),
        ).called(1);
      });

      test('should succeeds when signInWithEmailAndPassword succeeds', () async {
        expect(
          authenticationRepository.logInWithEmailAndPassword(
            email: email,
            password: password,
          ),
          completes,
        );
      });

      test('should return LogInWithEmailAndPasswordFailure ', () async {
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(firebase_auth.FirebaseAuthException(code: 'user-disabled'));
        expect(
          await authenticationRepository.logInWithEmailAndPassword(
            email: email,
            password: password,
          ),
          const Right(AuthFailure.userDisabled()),
        );
      });
    });

    group('logOut', () {
      test('should calls signOut', () async {
        when(() => firebaseAuth.signOut()).thenAnswer((_) async => {});
        when(() => googleSignIn.signOut()).thenAnswer((_) async => null);
        await authenticationRepository.logOut();
        verify(() => firebaseAuth.signOut()).called(1);
        verify(() => googleSignIn.signOut()).called(1);
      });

      test('should return LogOutFailure', () async {
        when(() => firebaseAuth.signOut()).thenThrow(Exception());
        expect(
          await authenticationRepository.logOut(),
          const Right(AuthFailure.logoutFailure()),
        );
      });
    });

    group('user', () {
      test('emits OctoUser.empty when firebase user is null', () async {
        when(() => firebaseAuth.authStateChanges()).thenAnswer((_) => Stream.value(null));
        await expectLater(
          authenticationRepository.user,
          emitsInOrder(const <OctoUser>[OctoUser.empty()]),
        );
      });

      test('emits User when firebase user is not null', () async {
        final firebaseUser = MockFirebaseUser();
        when(() => firebaseUser.uid).thenReturn(_mockFirebaseUserUid);
        when(() => firebaseUser.email).thenReturn(_mockFirebaseUserEmail);
        when(() => firebaseUser.photoURL).thenReturn(null);
        when(() => firebaseUser.isAnonymous).thenReturn(false);
        when(() => firebaseAuth.authStateChanges()).thenAnswer((_) => Stream.value(firebaseUser));
        await expectLater(
          authenticationRepository.user,
          emitsInOrder(const <OctoUser>[user]),
        );
      });
    });
  });
}
