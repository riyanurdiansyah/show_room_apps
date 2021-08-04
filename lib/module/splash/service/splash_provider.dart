import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_room_apps/module/auth/view/sign_in_screen.dart';
import 'package:show_room_apps/module/dashboard/view/dashboard_screen.dart';

class SplashProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  SplashProvider() {
    Future.delayed(Duration(seconds: 3), () {
      _fnInitializeData();
    });
  }

  Future _fnInitializeData() async {
    FirebaseAuth.instance.authStateChanges().listen((User user) {
      if (user != null) {
        Navigator.pushNamedAndRemoveUntil(scaffoldKey.currentContext,
            DashboardScreen.route, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            scaffoldKey.currentContext, SignInScreen.route, (route) => false);
      }
    });
  }
}
