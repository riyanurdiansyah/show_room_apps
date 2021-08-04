import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/auth/service/sign_up_provider.dart';
import 'package:show_room_apps/module/auth/view/sign_in_screen.dart';
import 'package:show_room_apps/module/auth/view/sign_up_screen.dart';
import 'package:show_room_apps/module/dashboard/service/dashboard_provider.dart';
import 'package:show_room_apps/module/dashboard/view/dashboard_screen.dart';

import 'module/auth/service/sign_in_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Show Room Us",
      initialRoute: SignInScreen.route,
      routes: {
        // note: sign in screen
        SignInScreen.route: (context) => ChangeNotifierProvider<SignInProvider>(
              create: (context) => SignInProvider(),
              child: SignInScreen(),
            ),
        // note: sign up screen
        SignUpScreen.route: (context) => ChangeNotifierProvider<SignUpProvider>(
              create: (context) => SignUpProvider(),
              child: SignUpScreen(),
            ),
        // note: dashboard screen
        DashboardScreen.route: (context) =>
            ChangeNotifierProvider<DashboardProvider>(
              create: (context) => DashboardProvider(),
              child: DashboardScreen(),
            ),
      },
    );
  }
}
