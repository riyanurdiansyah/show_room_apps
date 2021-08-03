import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  //initialize controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //is loading
  bool isLoading = false;

  //set visible password
  bool _isObscure = true;
  IconData _obscureIcon = Icons.visibility_off_rounded;
  IconData get obscureIcon => _obscureIcon;
  bool get isObscure => _isObscure;

  void fnIsObscure() {
    _isObscure = !_isObscure;
    _obscureIcon =
        _isObscure == true ? Icons.visibility_off : Icons.visibility_rounded;
    notifyListeners();
  }
}
