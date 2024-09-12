import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            onPressed: () {
              context.setLocale(Locale('ar'));
            },
            backgroundColor: const Color(0xffFF5842),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.imagesGoogleIcon),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "Google",
                  style: Styles.textStyleBold15(context)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
