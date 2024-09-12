import 'package:recipe_app/core/utils/app_localization_keys.dart';

String? customTextFormFieldValidator(String? value) {
  if (value == null || value.isEmpty) {
    return AppLocalizationKeys.auth.thisFieldRequired;
  } else {
    return null;
  }
}
