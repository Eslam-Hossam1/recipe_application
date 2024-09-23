import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._authRepo) : super(ForgetPasswordInitial());
  final AuthRepo _authRepo;
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    emit(ForgetPasswordLoading());

    var signUpResult = await _authRepo.sendPasswordResetEmail(
      email: email,
    );
    signUpResult.fold(
      (failure) =>
          emit(ForgetPasswordFailure(errorMessage: failure.errorMessage)),
      (_) => emit(ForgetPasswordSuccess()),
    );
  }
}
