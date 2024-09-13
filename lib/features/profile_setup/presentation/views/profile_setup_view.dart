import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/features/profile_setup/presentation/views/widgets/profile_setup_view_body.dart';

class ProfileSetupView extends StatelessWidget {
  const ProfileSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AdaptivePadding(
          child: ProfileSetupViewBody(),
        ),
      ),
    );
  }
}
