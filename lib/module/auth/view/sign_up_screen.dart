import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:show_room_apps/module/auth/service/sign_up_provider.dart';
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
                    margin: EdgeInsets.only(top: size.height * 0.05),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.25),
                        child: PosText.labelPutih(
                          "SIGN UP",
                          size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(60))),
                    child: Form(
                      key: _provider.key,
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.08,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: size.height * 0.05,
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
                                      hintText: "Username",
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
