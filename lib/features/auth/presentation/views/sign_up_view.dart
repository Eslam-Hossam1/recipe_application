import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
          AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: 'Dialog description here.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();
        } else if (state is SignUpSuccess) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Dialog Title',
            desc: 'Dialog description here.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();
        }
      },
      builder: (context, state) {
        bool isLoading = state is SignUpLoading;
        return ModalProgressHUD(
          inAsyncCall: isLoading,
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
