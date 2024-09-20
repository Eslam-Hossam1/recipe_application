import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/features/on_boarding/presentation/view_model/onboarding_view_model.dart';
import 'package:recipe_app/features/splash/presentation/view_model/splash_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Initialize SharedPreferences asynchronously
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SplashViewModel>(SplashViewModel());
  getIt.registerSingleton<SharedPreferencesHelper>(
      SharedPreferencesHelper(sharedPreferences));
  getIt.registerSingleton<OnboardingViewModel>(OnboardingViewModel());
}
