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

  //view related keys
  final String logInViewWelcomeBack = 'auth.log_in.welcome_back';
  final String logInViewDontHaveAnAccount = 'auth.log_in.do_not_have_account';
  final String signUpViewWelcome = 'auth.sign_up.welcome';
  final String signUpViewAlreadyHaveAnAccount =
      'auth.sign_up.already_have_an_account';
  final String forgetPasswordViewResetYourPassword =
      'auth.forget_password.reset_your_password';
  final String forgetPasswordViewEnterEmailRecoverPassword =
      'auth.forget_password.enter_email_recover_password';
}
