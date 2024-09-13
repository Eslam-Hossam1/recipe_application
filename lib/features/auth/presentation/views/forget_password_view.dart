import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_body.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_view_body_tablet_layout.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_view_body_mobile_layout.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        mobileLayout: (context) => const ForgetPasswordViewBodyMobileLayout(),
        tabletLayout: (context) => const ForgetPasswordViewBodyTabletLayout(),
      ),
    ));
  }
}
