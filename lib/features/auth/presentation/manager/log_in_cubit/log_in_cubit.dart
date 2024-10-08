import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/core/functions/check_loged_and_verified_user.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this._authRepo) : super(LogInInitial());
  final AuthRepo _authRepo;

  Future<void> logInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(LogInLoading());

    var signUpResult = await _authRepo.logInWithEmailAndPassword(
        email: email, password: password);
    signUpResult.fold(
      (failure) => emit(LogInFailure(errorMessage: failure.errorMessage)),
      (userCredential) {
        if (checkLoggedAndVerifiedUser()) {
          emit(LogInSuccessAndVerified());
        } else {
          _sendEmailVerification();
        }
      },
    );
  }

  Future<void> _sendEmailVerification() async {
    var verificationResult = await _authRepo.sendEmailVerification();
    verificationResult.fold(
      (failure) => emit(LogInFailure(errorMessage: failure.errorMessage)),
      (_) => emit(LogInSuccessButNeedVerification()),
    );
  }
}
