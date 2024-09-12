import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_clickable_text.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_with_email_and_password_button.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/obsecure_text_form_field.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_in_with_google_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> _formKey;
  late AutovalidateMode _autovalidateMode;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _autovalidateMode = AutovalidateMode.disabled;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
              hint: AppLocalizationKeys.auth.emailTextFeildHint.tr()),
          SizedBox(
            height: 16.h,
          ),
          ObsecureTextFormField(
            hint: AppLocalizationKeys.auth.passwordTextFieldHint.tr(),
          ),
          SizedBox(
            height: 24.h,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: ForgetPasswordClickableText(),
          ),
          SizedBox(
            height: 72.h,
          ),
          const LoginWithEmailAndPasswordButton(),
          SizedBox(
            height: 24.h,
          ),
          Text(
            AppLocalizationKeys.auth.orContinueWith.tr(),
            style: Styles.textStyleMedium15(context).copyWith(
              color: AppColors.getSecondaryTextColor(context),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          const SignInWithGoogleButton(),
        ],
      ),
    );
  }
}
