import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:octonote/domain/models/app_error/app_error.dart';
import 'package:octonote/domain/models/octo_user/octo_user.dart';
import 'package:octonote/domain/repositories/user/users_repository.dart';

class FetchUser {
  FetchUser(this.usersRepository);

  final UsersRepository usersRepository;

  Future<Either<AppError, OctoUser>> call(FetchUserParams params) async {
    const durationBetweenAttempts = Duration(seconds: 5);

    int attempts = 0;
    while (attempts < 5) {
      final result = await usersRepository.getUser(userId: params.userId);
      if (isUserEmptySuccess(result)) {
        attempts += 1;
        await Future.delayed(durationBetweenAttempts);
      } else {
        return result;
      }
    }
    return Left(AppError(message: "server"));
  }

  bool isUserEmptySuccess(Either<AppError, OctoUser> result) {
    return result.fold(
      (failure) => false,
      (userSuccess) {
        if (userSuccess.isEmpty) {
          return true;
        }
        return false;
      },
    );
  }
}

class FetchUserParams {
  FetchUserParams({required this.userId});
  final String userId;
}
