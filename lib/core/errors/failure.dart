import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart'; // Import easy_localization package
import 'package:recipe_app/core/utils/app_localization_keys.dart'; // Import localization keys

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}
