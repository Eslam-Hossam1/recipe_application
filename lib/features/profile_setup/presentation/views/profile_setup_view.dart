import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';

class ProfileSetupView extends StatelessWidget {
  const ProfileSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AdaptivePadding(
          child: ProfileSetupView(),
        ),
      ),
    );
  }
}
