import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  AppFont._();

  static TextStyle normal = GoogleFonts.roboto(
    fontWeight: FontWeight.w100,
  );
  static TextStyle regular = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
  );
  static TextStyle semiBold = GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
  );
  static TextStyle bold = GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
  );
}

extension AppFontSize on TextStyle {
  TextStyle get s10 {
    return copyWith(fontSize: 10);
  }

  TextStyle get s12 {
    return copyWith(fontSize: 12);
  }

  TextStyle get s14 {
    return copyWith(fontSize: 14);
  }

  TextStyle get s16 {
    return copyWith(fontSize: 16);
  }

  TextStyle get s18 {
    return copyWith(fontSize: 18);
  }

  TextStyle get s20 {
    return copyWith(fontSize: 20);
  }
}
