import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipe_app/core/errors/failure.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure(super.errorMessage);

  // Factory constructor to create the failure based on FirebaseAuthException
  factory FirebaseAuthFailure.fromFirebaseAuthException(
      FirebaseAuthException firebaseAuthException) {
    String errorMessage;

    switch (firebaseAuthException.code) {
      case 'wrong-password':
        errorMessage = AppLocalizationKeys.auth.logInViewWrongPassword.tr();
        break;
      case 'invalid-email':
        errorMessage = AppLocalizationKeys.auth.invalidEmail.tr();
        break;
      case 'user-disabled':
        errorMessage = AppLocalizationKeys.auth.logInViewUserDisabled.tr();
        break;
      case 'user-not-found':
        errorMessage = AppLocalizationKeys.auth.userNotFound.tr();
        break;
      case 'email-already-in-use':
        errorMessage =
            AppLocalizationKeys.auth.signUpViewEmailAlreadyInUse.tr();
        break;
      case 'operation-not-allowed':
        errorMessage =
            AppLocalizationKeys.auth.signUpViewOperationNotAllowed.tr();
        break;
      case 'weak-password':
        errorMessage = AppLocalizationKeys.auth.signUpViewWeakPassword.tr();
        break;
      case 'too-many-requests':
        errorMessage = AppLocalizationKeys.auth.tooManyRequests.tr();
        break;
      case 'network-request-failed':
        errorMessage = AppLocalizationKeys.auth.networkRequestFailed.tr();
        break;
      case 'invalid-recipient-email':
        errorMessage = AppLocalizationKeys.auth.invalidRecipientEmail.tr();
        break;
      default:
        errorMessage = AppLocalizationKeys.auth.unknownError.tr();
    }

    // Return the failure object with the localized message
    return FirebaseAuthFailure(errorMessage);
  }
}
