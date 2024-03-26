import 'package:flutter/material.dart';
import 'package:flutter_training_cli/infrastructure/theme/color.scheme.dart';

class TMDBTheme {
  ThemeData getLight() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: TMDBLightColorScheme,
      buttonTheme: ButtonThemeData(
        shape: ,
        buttonColor: TMDBDarkColorScheme.secondary

        )
    );
  }

  ThemeData getDark() {
    return ThemeData(useMaterial3: true, colorScheme: TMDBDarkColorScheme);
  }
}
