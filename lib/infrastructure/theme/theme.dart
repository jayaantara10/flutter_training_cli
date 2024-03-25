import 'package:flutter/material.dart';
import 'package:flutter_training_cli/infrastructure/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TMDBTheme {
  static ThemeData getLight() {
    return ThemeData(useMaterial3: true, colorScheme: TMDBLightColorScheme);
  }

  static ThemeData getDark() {
    return ThemeData(useMaterial3: true, colorScheme: TMDBDarkColorScheme);
  }
}
