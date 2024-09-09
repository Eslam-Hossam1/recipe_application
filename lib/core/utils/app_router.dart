// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/on_boarding_view.dart';

abstract class AppRouter {
  static const kHomeView = "/homeview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
