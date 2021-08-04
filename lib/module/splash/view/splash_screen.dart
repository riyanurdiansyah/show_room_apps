import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/splash/service/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  static final String route = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<SplashProvider>(context, listen: false);
    return Scaffold(
      key: _provider.scaffoldKey,
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Text(
            "Shoo...Room",
            style: GoogleFonts.aBeeZee(
              fontSize: MediaQuery.of(context).size.width * 0.08,
            ),
          ),
        ),
      ),
    );
  }
}
