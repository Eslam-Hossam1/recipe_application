import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/app_themes.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/on_boarding_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await SharedPreferencesHelper.initialize();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: "assets/translations",
          fallbackLocale: const Locale('en'),
          child: const RecipeApp()), // Wrap your app
    ),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
            const Size(375, 812), // Design size, e.g., iPhone X dimensions
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            locale: context.locale, // Use EasyLocalization locale
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            builder: DevicePreview.appBuilder, // Wrap with DevicePreview
            theme: AppThemes.getLightTheme(
                isArabic: context.locale == const Locale('ar')),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
