import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:recipe_app/core/functions/custom_adaptive_awesome_dialog.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/core/widgets/custom_cicular_progress_indicator.dart';
import 'package:recipe_app/features/auth/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_body.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_view_body_tablet_layout.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_view_body_mobile_layout.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordFailure) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.error,
            title: AppLocalizationKeys.global.error.tr(),
            desc: state.errorMessage,
            btnOkOnPress: () {},
          ).show();
        } else if (state is ForgetPasswordSuccess) {
          customAdaptiveAwesomeDialog(
            context,
            dialogType: DialogType.success,
            title: AppLocalizationKeys.global.success.tr(),
            desc: AppLocalizationKeys
                .auth.forgetPasswordViewPasswordResetLinkSent
                .tr(),
            btnOkOnPress: () {},
            onDismissCallback: (_) {
              context.go(AppRouter.kLogInView);
            },
          ).show();
        }
      },
      builder: (context, state) {
        bool isLoading = state is ForgetPasswordLoading;

        return ModalProgressHUD(
          inAsyncCall: isLoading,
          progressIndicator: const CustomCircularProgressIndicator(),
          child: Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: true,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: AppColors.getMainTextColor(context),
                  size: 24,
                ),
              ),
            ),
            body: AdaptiveLayout(
              mobileLayout: (context) =>
                  const ForgetPasswordViewBodyMobileLayout(),
              tabletLayout: (context) =>
                  const ForgetPasswordViewBodyTabletLayout(),
            ),
          ),
        );
      },
    );
  }
}
