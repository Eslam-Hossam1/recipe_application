import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/service_locator.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/adaptive_padding.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/on_boarding/presentation/view_model/onboarding_view_model.dart';

class OnBoardingBottomSectionTablet extends StatelessWidget {
  const OnBoardingBottomSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .20),
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Text(
            AppLocalizationKeys.onBoarding.title.tr(),
            style: Styles.textStyleBold22(context).copyWith(
              color: AppColors.getMainTextColor(context),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            textAlign: TextAlign.center,
            AppLocalizationKeys.onBoarding.body.tr(),
            style: Styles.textStyleMedium17(context).copyWith(
              color: AppColors.getSecondaryTextColor(context),
            ),
          ),
          Expanded(
              flex: 2,
              child: SizedBox(
                height: 32.h,
              )),
          Row(
            children: [
              Expanded(
                child: CustomTextButton(
                  onPressed: () async {
                    await getIt<OnboardingViewModel>()
                        .setOnBoardingCompletedToTrueThenNavigate(context);
                  },
                  child: Text(AppLocalizationKeys.onBoarding.buttonText.tr(),
                      style: Styles.textStyleBold15(context).copyWith(
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height *
                (32 / Constants.kDesignHeight),
          ),
        ],
      ),
    );
  }
}
