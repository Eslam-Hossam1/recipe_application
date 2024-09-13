import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/adaptive_layout_widget.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_bottom_section_mobile.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_bottom_section_tablet.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const OnBourdingImage(),
              AdaptiveLayout(
                mobileLayout: (context) =>
                    const Expanded(child: OnBoardingBottomSectionMobile()),
                tabletLayout: (context) =>
                    const Expanded(child: OnBoardingBottomSectionTablet()),
              )
            ],
          ),
        ),
      ],
    );
  }
}
