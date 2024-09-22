import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo_impl.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authRepo) : super(SignUpInitial());
  final AuthRepo _authRepo;
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignUpLoading());

    var signUpResult = await _authRepo.signUpWithEmailAndPassword(
        email: email, password: password);
    signUpResult.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.errorMessage)),
      (userCredential) => _sendEmailVerification(),
    );
  }

  Future<void> _sendEmailVerification() async {
    var verificationResult = await _authRepo.sendEmailVerification();
    verificationResult.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.errorMessage)),
      (_) => emit(SignUpSuccess()),
    );
  }
}
