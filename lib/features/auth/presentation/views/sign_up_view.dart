import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: AdaptivePadding(
        child: SignUpViewBody(),
      ),
    ));
  }
}
