import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipe_app/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserCredential>> logInWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<Failure, UserCredential>> signUpWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<Failure, void>> sendPasswordResetEmail({required String email});
  Future<Either<Failure, void>> sendEmailVerification({required User user});
}
