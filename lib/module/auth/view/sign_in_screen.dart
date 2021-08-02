import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/auth/service/sign_in_provider.dart';
import 'package:show_room_apps/module/auth/view/sign_up_screen.dart';
import 'package:show_room_apps/utils/standartext.dart';

class SignInScreen extends StatefulWidget {
  static final String route = "SignInScreen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _provider = Provider.of<SignInProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: size.width * 0.25),
                    child: FlutterLogo(
                      size: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.width * 0.1,
                        ),
                        PosText.labelHitamBold(
                          "SIGN IN",
                          size.width * 0.06,
                        ),
                        SizedBox(
                          height: size.width * 0.2,
                        ),
                        Container(
                          height: size.height * 0.08,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: size.width * 0.04,
                            right: size.width * 0.04,
                          ),
                          child: Card(
                            semanticContainer: true,
                            elevation: 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  style: GoogleFonts.ubuntu(
                                      fontSize: size.width * 0.04),
                                  controller: _provider.usernameController,
                                  cursorColor: Colors.blue,
                                  decoration: InputDecoration(
                                    fillColor: Colors.brown,
                                    border: InputBorder.none,
                                    hintText: "Email or username",
                                    hintStyle: GoogleFonts.ubuntu(
                                      fontSize: size.width * 0.04,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: size.height * 0.08,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: size.width * 0.04,
                            right: size.width * 0.04,
                          ),
                          child: Card(
                            semanticContainer: true,
                            elevation: 2,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: TextFormField(
                                  obscureText: _provider.isObscure,
                                  controller: _provider.passwordController,
                                  cursorColor: Colors.blue,
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: GoogleFonts.ubuntu(
                                      fontSize: size.width * 0.04),
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      color: Colors.black45,
                                      icon: Icon(_provider.obscureIcon),
                                      onPressed: () {
                                        setState(() {
                                          _provider.fnIsObscure();
                                        });
                                      },
                                    ),
                                    fillColor: Colors.brown,
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: GoogleFonts.ubuntu(
                                      fontSize: size.width * 0.04,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Container(
                          width: size.width * 0.6,
                          height: size.height * 0.055,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                            ),
                            child: PosText.labelPutih(
                              "LOGIN",
                              size.width * 0.05,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: GoogleFonts.ubuntu(
                                fontSize: size.width * 0.04,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Sign up',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: size.width * 0.04,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(
                                          context, SignUpScreen.route);
                                    },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
