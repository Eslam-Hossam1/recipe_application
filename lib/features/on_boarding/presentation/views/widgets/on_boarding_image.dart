import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/assets.dart';

class OnBourdingImage extends StatelessWidget {
  const OnBourdingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 2,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Assets.imagesOnboarding))),
    );
  }
}
