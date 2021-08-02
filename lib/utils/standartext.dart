import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PosText {
  static Text labelPutih(
    String title,
    double fontSize,
  ) {
    return Text(
      title,
      style: GoogleFonts.ubuntu(
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  static Text labelHitam(
    String title,
    double fontSize,
  ) {
    return Text(
      title,
      style: GoogleFonts.ubuntu(
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  static Text labelHitamBold(
    String title,
    double fontSize,
  ) {
    return Text(
      title,
      style: GoogleFonts.ubuntu(
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
