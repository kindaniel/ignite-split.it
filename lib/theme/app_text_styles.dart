import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get loginTitle;
  TextStyle get defaultSizeText;
  TextStyle get button;
  TextStyle get appBarFont;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.montserrat(
        fontSize: 16,
        color: Colors.black54,
      );

  @override
  TextStyle get loginTitle => GoogleFonts.montserrat(
        fontSize: 40,
        color: AppTheme.colors.title,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get defaultSizeText => GoogleFonts.montserrat(
        fontSize: 16,
        color: Colors.black54,
      );

  @override
  TextStyle get appBarFont => GoogleFonts.montserrat(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );
}
