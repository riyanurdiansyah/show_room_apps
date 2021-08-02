import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  final key = GlobalKey<FormState>();

  //initialize controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final namaController = TextEditingController();
  final hpController = TextEditingController();
  final addressController = TextEditingController();

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
