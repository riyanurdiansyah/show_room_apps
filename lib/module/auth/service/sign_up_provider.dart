import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  //initialize controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final namaController = TextEditingController();
  final hpController = TextEditingController();
  final addressController = TextEditingController();

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

  //set visible confirm password
  bool _isObscureConfirm = true;
  IconData _obscureIconConfirm = Icons.visibility_off_rounded;
  IconData get obscureIconConfirm => _obscureIconConfirm;
  bool get isObscureConfirm => _isObscureConfirm;

  void fnIsObscureConfirm() {
    _isObscureConfirm = !_isObscureConfirm;
    _obscureIconConfirm = _isObscureConfirm == true
        ? Icons.visibility_off
        : Icons.visibility_rounded;
    notifyListeners();
  }
}
