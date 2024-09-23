import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
    return SafeArea(
      child: BlocBuilder<LogInCubit, LogInState>(
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
      ),
    );
  }
}
