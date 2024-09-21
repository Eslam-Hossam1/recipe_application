import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipe_app/core/errors/failure.dart';
import 'package:recipe_app/core/errors/firebase_auth_failure.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, UserCredential>> logInWithEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement logInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(
      {required String email}) {
    // TODO: implement sendPasswordResetEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return right(userCredential);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(FirebaseAuthFailure.fromFirebaseAuthException(e));
      } else {
        return left(
          FirebaseAuthFailure(AppLocalizationKeys.auth.unknownError.tr()),
        );
      }
    }
  }
}
