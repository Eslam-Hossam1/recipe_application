import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:recipe_app/core/functions/custom_adaptive_awesome_dialog.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_view_body_mobile_layout.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_view_body_tablet_layout.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.error,
            title: AppLocalizationKeys.global.error.tr(),
            desc: state.errorMessage,
            btnOkOnPress: () {},
          ).show();
        } else if (state is SignUpSuccess) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.success,
            title: AppLocalizationKeys.global.success.tr(),
            desc: AppLocalizationKeys.auth.goVerifyEmail.tr(),
            btnOkOnPress: () {},
            onDismissCallback: (_) {
              context.go(AppRouter.kLogInView);
            },
          ).show();
        }
      },
      builder: (context, state) {
        bool isLoading = state is SignUpLoading;
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          progressIndicator: CircularProgressIndicator(
            color: AppColors.getPrimaryColor(context),
          ),
          child: Scaffold(
            body: AdaptiveLayout(
              mobileLayout: (context) => const SignUpViewBodyMobileLayout(),
              tabletLayout: (context) => const SignUpViewBodyTabletLayout(),
            ),
          ),
        );
      },
    ));
  }
}
