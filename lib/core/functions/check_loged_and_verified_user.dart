import 'package:firebase_auth/firebase_auth.dart';

bool checkLoggedAndVerifiedUser() {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null && user.emailVerified) {
    return true;
  } else {
    return false;
  }
}
