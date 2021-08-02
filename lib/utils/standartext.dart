import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class PosText {
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
}
