import 'package:flutter/material.dart';

abstract class AppColors {
  Color get background;
  Color get title;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => Color(0xFF40B3BC);

  @override
  Color get title => Color(0xFF40B28C);
}
