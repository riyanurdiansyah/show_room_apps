import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class DashboardProvider extends ChangeNotifier {
  final User user = FirebaseAuth.instance.currentUser;
}
