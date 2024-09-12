// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:recipe_app/features/auth/presentation/views/login_view.dart';
import 'package:recipe_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:recipe_app/features/splash/presentation/views/splash_view.dart';
import 'package:recipe_app/test_view.dart';

abstract class AppRouter {
  static const kHomeView = "/homeview";
  static const kOnBoardingView = "/onboardingview";
  static const kLogInView = "/loginview";
  static const kSignUpView = "/signupview";
  static const kForgetPasswordView = "/forgetpasswordview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
