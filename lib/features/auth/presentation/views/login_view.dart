import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body_mobile_layout.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_view_body_tablet_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AdaptiveLayout(
          mobileLayout: (context) => const LoginViewBodyMobileLayout(),
          tabletLayout: (context) => const LoginViewBodyTabletLayout(),
        ),
      ),
    );
  }
}
