abstract class AppLocalizationKeys {
  static OnBoarding onBoarding = OnBoarding._instance;
  static Auth auth = Auth._instance;
}

class OnBoarding {
  OnBoarding._();
  static final OnBoarding _instance = OnBoarding._();
  final String title = 'onboarding.title';
  final String body = 'onboarding.body';
  final String buttonText = 'onboarding.button_text';
}

class Auth {
  Auth._();
  static final Auth _instance = Auth._();
  //shared keys
  final String enterAccount = 'auth.shared.enter_account';
  final String emailTextFeildHint = 'auth.shared.email_text_field_hint';
  final String passwordTextFieldHint = 'auth.shared.password_text_field_hint';
  final String forgetPasswordQuestion = 'auth.shared.forget_password_question';
  final String logIn = 'auth.shared.log_in';
  final String signup = 'auth.shared.sign_up';
  final String orContinueWith = 'auth.shared.or_continue_with';
  final String confirm = 'auth.shared.confirm';
  final String thisFieldRequired = 'auth.shared.this_field_required';
  final String unknownError = 'auth.shared.unknown_error';
  final String invalidEmail = 'auth.shared.invalid_email';
  final String userNotFound = 'auth.shared.user_not_found';
  final String invalidRecipientEmail = 'auth.shared.invalid_recipient_email';
  final String tooManyRequests = 'auth.shared.too_many_requests';
  final String networkRequestFailed = 'auth.shared.network_request_failed';

  //view related keys
  final String logInViewWelcomeBack = 'auth.log_in.welcome_back';
  final String logInViewDontHaveAnAccount = 'auth.log_in.do_not_have_account';
  final String logInViewWrongPassword = 'auth.log_in.wrong_password';
  final String logInViewUserDisabled = 'auth.log_in.user_disabled';
  final String signUpViewWelcome = 'auth.sign_up.welcome';
  final String signUpViewYourPasswordMustContain =
      'auth.sign_up.your_password_must_contain';
  final String signUpViewEmailAlreadyInUse =
      'auth.sign_up.email_already_in_use';
  final String signUpViewOperationNotAllowed =
      'auth.sign_up.operation_not_allowed';

  final String signUpViewWeakPassword = 'auth.sign_up.weak_password';

  final String signUpViewAtLeastCharacters = 'auth.sign_up.at_least_characters';
  final String signUpViewMustContainNumber =
      'auth.sign_up.must_contains_a_number';
  final String signUpViewAlreadyHaveAnAccount =
      'auth.sign_up.already_have_an_account';
  final String forgetPasswordViewPasswordRecovery =
      'auth.forget_password.password_recovery';
  final String forgetPasswordViewEnterEmailRecoverPassword =
      'auth.forget_password.enter_email_recover_password';
}
