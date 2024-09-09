// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:recipe_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = "/homeview";
  static const kOnBoardingView = "/onboardingview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
