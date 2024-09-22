// GoRouter configuration
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/service_locator.dart';
import 'package:recipe_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:recipe_app/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:recipe_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:recipe_app/features/auth/presentation/views/login_view.dart';
import 'package:recipe_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_form.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:recipe_app/features/profile_setup/presentation/views/profile_setup_view.dart';
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
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const OnBoardingView(),
      // ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(getIt<AuthRepoImpl>()),
          child: const SignUpView(),
        ),
      ),
    ],
  );
}
