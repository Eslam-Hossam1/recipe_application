import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/utils/assets.dart';

class OpenedEyeSvg extends StatelessWidget {
  const OpenedEyeSvg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      width: 24,
      height: 24,
      child: SvgPicture.asset(
        Assets.imagesEyeIcon,
      ),
    );
  }
}
