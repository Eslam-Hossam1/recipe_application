import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:recipe_app/core/functions/custom_adaptive_awesome_dialog.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/auth/presentation/manager/log_in_cubit/log_in_cubit.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body_mobile_layout.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body_tablet_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInFailure) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.error,
            title: AppLocalizationKeys.global.error.tr(),
            desc: state.errorMessage,
            btnOkOnPress: () {},
          ).show();
        } else if (state is LogInSuccessButNeedVerification) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.info,
            title: AppLocalizationKeys.global.info.tr(),
            desc:
                AppLocalizationKeys.auth.logInViewYourEmailNotVerifiedYet.tr(),
            btnOkOnPress: () {},
          ).show();
        } else if (state is LogInSuccessAndVerified) {
          context.go(AppRouter.kHomeView);
        }
      },
      builder: (context, state) {
        bool isLoading = state is LogInLoading;
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          progressIndicator: CircularProgressIndicator(
            color: AppColors.getPrimaryColor(context),
          ),
          child: Scaffold(
            body: AdaptiveLayout(
              mobileLayout: (context) => const LoginViewBodyMobileLayout(),
              tabletLayout: (context) => const LoginViewBodyTabletLayout(),
            ),
          ),
        );
      },
    );
  }
}
