import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomFlushbar {
  static info(context, titledialog, msg) {
    Flushbar(
      backgroundColor: Colors.black,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      borderRadius: BorderRadius.circular(10),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      title: titledialog,
      message: msg,
      duration: Duration(milliseconds: 1500),
      icon: Icon(
        Icons.warning,
        color: Colors.orange,
      ),
    )..show(context);
  }
}
