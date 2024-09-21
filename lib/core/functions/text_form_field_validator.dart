import 'package:easy_localization/easy_localization.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';

String? customTextFormFieldValidator(String? value) {
  if (value == null || value.isEmpty) {
    return AppLocalizationKeys.auth.thisFieldRequired.tr();
  } else {
    return null;
  }
}
