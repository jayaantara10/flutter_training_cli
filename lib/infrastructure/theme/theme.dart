import 'package:flutter/material.dart';
import 'package:flutter_training_cli/infrastructure/theme/color.scheme.dart';
import 'package:flutter_training_cli/infrastructure/theme/font.style.dart';

class TMDBTheme {
  static ThemeData getLight() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: TMDBLightColorScheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            backgroundColor: TMDBLightColorScheme.secondary,
            foregroundColor: TMDBLightColorScheme.onSecondary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            foregroundColor: TMDBLightColorScheme.secondary). copyWith( side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)){
                return BorderSide(color: TMDBLightColorScheme.)
              }
            }
        )),
      ).,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            foregroundColor: TMDBLightColorScheme.secondary),
      ),
    );
  }

  static ThemeData getDark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: TMDBDarkColorScheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            backgroundColor: TMDBLightColorScheme.secondary,
            textStyle: TMDBFontStyle.textLargeMedium,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}
