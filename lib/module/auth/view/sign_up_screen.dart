import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypt/crypt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/auth/service/auth_service.dart';
import 'package:show_room_apps/module/auth/service/sign_up_provider.dart';
import 'package:show_room_apps/module/auth/view/sign_in_screen.dart';
import 'package:show_room_apps/utils/custome_alert_dialog.dart';
import 'package:show_room_apps/utils/standartext.dart';

class SignUpScreen extends StatefulWidget {
  static final String route = "SignUpScreen";
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _provider = Provider.of<SignUpProvider>(context, listen: false);
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
                    child: Form(
                      key: _provider.formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.width * 0.1,
                          ),
                          PosText.labelHitamBold(
                            "SIGN UP",
                            size.width * 0.06,
                          ),
                          SizedBox(
                            height: size.width * 0.1,
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
                                    controller: _provider.emailController,
                                    cursorColor: Colors.blue,
                                    decoration: InputDecoration(
                                      fillColor: Colors.brown,
                                      border: InputBorder.none,
                                      hintText: "Email address",
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
                                    textInputAction: TextInputAction.next,
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
                                    obscureText: _provider.isObscureConfirm,
                                    controller:
                                        _provider.confirmPasswordController,
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
                                            _provider.fnIsObscureConfirm();
                                          });
                                        },
                                      ),
                                      fillColor: Colors.brown,
                                      border: InputBorder.none,
                                      hintText: "Confirm Password",
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
                            height: size.height * 0.06,
                          ),
                          Container(
                            width: size.width * 0.6,
                            height: size.height * 0.06,
                            child: ElevatedButton(
                              onPressed: () async {
                                // const specialchar = r'^(?=.*?[#?!@$%^&*-])';
                                // const lowercase = r'^(?=.*[a-z])';
                                // const uppercase = r'^(?=.*[A-Z])';
                                // const number = r'^(?=.*[0-9])';
                                // const pattern =
                                //     r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                                // final regEmail = RegExp(pattern);
                                // if (_provider.emailController.text.isEmpty) {
                                //   return CustomFlushbar.info(context,
                                //       "Error..!!", "Email can't be empty");
                                // } else if (!regEmail.hasMatch(
                                //     _provider.emailController.text.trim())) {
                                //   return CustomFlushbar.info(context,
                                //       "Error..!!", "Email is not valid");
                                // } else if (_provider
                                //     .passwordController.text.isEmpty) {
                                //   return CustomFlushbar.info(context,
                                //       "Error..!!", "Password can't be empty");
                                // } else if (_provider
                                //         .passwordController.text.length <
                                //     8) {
                                //   return CustomFlushbar.info(context,
                                //       "Error..!!", "Password is to sort");
                                // } else if (!RegExp(number).hasMatch(
                                //     _provider.passwordController.text.trim())) {
                                //   return CustomFlushbar.info(
                                //       context,
                                //       "Error..!!",
                                //       "Password must contains one number");
                                // } else if (!RegExp(uppercase).hasMatch(
                                //     _provider.passwordController.text.trim())) {
                                //   return CustomFlushbar.info(
                                //       context,
                                //       "Error..!!",
                                //       "Password must contains one uppercase characters");
                                // } else if (!RegExp(lowercase).hasMatch(
                                //     _provider.passwordController.text.trim())) {
                                //   return CustomFlushbar.info(
                                //       context,
                                //       "Error..!!",
                                //       "Password must contains one lowercase characters");
                                // } else if (!RegExp(specialchar).hasMatch(
                                //     _provider.passwordController.text.trim())) {
                                //   return CustomFlushbar.info(
                                //       context,
                                //       "Error..!!",
                                //       "Password must contains one special characters");
                                // } else if (_provider.passwordController.text !=
                                //     _provider.confirmPasswordController.text) {
                                //   return CustomFlushbar.info(context,
                                //       "Error..!!", "Password doesn't match");
                                // } else {
                                setState(() {
                                  _provider.isLoading = true;
                                });

                                var listName =
                                    _provider.emailController.text.split("@");
                                String name = listName[0];
                                String hashPassword = Crypt.sha256(
                                        _provider.passwordController.text)
                                    .toString();
                                await AuthService.signUp(
                                  name,
                                  _provider.emailController.text,
                                  _provider.passwordController.text,
                                  hashPassword,
                                );
                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                ),
                              ),
                              child: (_provider.isLoading == false)
                                  ? PosText.labelPutih(
                                      "REGIS",
                                      size.width * 0.05,
                                    )
                                  : Container(
                                      width: 15,
                                      height: 15,
                                      child: CircularProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Already have an account?',
                                style: GoogleFonts.ubuntu(
                                  fontSize: size.width * 0.04,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Sign In',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: size.width * 0.04,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, SignInScreen.route);
                                      },
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
