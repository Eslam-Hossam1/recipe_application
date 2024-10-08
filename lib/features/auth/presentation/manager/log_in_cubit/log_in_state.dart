part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInSuccessButNeedVerification extends LogInState {}

final class LogInSuccessAndVerified extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInFailure extends LogInState {
  final String errorMessage;

  LogInFailure({required this.errorMessage});
}
