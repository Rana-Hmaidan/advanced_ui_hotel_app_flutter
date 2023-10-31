import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter/material.dart';

@immutable
class AppColors {
  const AppColors._();

  static const Color mainColor = Color(0xff3cd4d4);
  static const Color scaffoldBG = Color(0xfff4f5f7);
  static const Color secondary = Color(0xff1d2725);
  static const Color lightSecondary = Color(0xff616866);
  static const Color greyColor = Color(0xFFE4E7E8);
}

@immutable
class ThemeConstants {
  const ThemeConstants._();

  static const String fontFamily = "NoirPro";
}