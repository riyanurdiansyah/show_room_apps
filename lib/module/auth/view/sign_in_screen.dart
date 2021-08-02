import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  static final String route = "SignInScreen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeText = MediaQuery.of(context).textScaleFactor;
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: sizeScreen.width * 0.04,
              ),
              width: sizeScreen.width,
              height: sizeScreen.height * 0.2,
              color: Colors.white,
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        FlutterLogo(),
                      ],
                    ),
                    flex: 2,
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.ubuntu(fontSize: 12),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.ubuntu(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.white,
                        )
                      ],
                    ),
                    flex: 2,
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.ubuntu(fontSize: 12),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.ubuntu(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
