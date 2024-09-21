import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMsg;

  Failure(this.errMsg);
}
