import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_clickable_text.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/login_with_email_and_password_button.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/obsecure_text_form_field.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_in_with_google_button.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_with_email_and_password_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late GlobalKey<FormState> _formKey;
  late AutovalidateMode _autovalidateMode;
  String? email;
  String? password;
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
            hint: AppLocalizationKeys.auth.emailTextFeildHint.tr(),
            onSaved: (value) {
              email = value;
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          ObsecureTextFormField(
            hint: AppLocalizationKeys.auth.passwordTextFieldHint.tr(),
            onSaved: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizationKeys.auth.signUpViewYourPasswordMustContain.tr(),
                style: Styles.textStyleMedium17(context).copyWith(
                  color: AppColors.getMainTextColor(context),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.imagesGreenDoneIcon),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    AppLocalizationKeys.auth.signUpViewAtLeastCharacters.tr(),
                    style: Styles.textStyleMedium15(context).copyWith(
                      color: AppColors.getMainTextColor(context),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.imagesGrayDoneIcon),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    AppLocalizationKeys.auth.signUpViewMustContainNumber.tr(),
                    style: Styles.textStyleMedium15(context).copyWith(
                      color: AppColors.getSecondaryTextColor(context),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 48.h,
          ),
          SignUpWithEmailAndPasswordButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                await BlocProvider.of<SignUpCubit>(context)
                    .signUpWithEmailAndPassword(
                        email: email!, password: password!);
              } else {
                _autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
