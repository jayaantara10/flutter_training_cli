import 'package:flutter/material.dart';
import 'package:flutter_training_cli/presentation/core/enum/button.size.enum.dart';
import 'package:flutter_training_cli/presentation/core/enum/button.type.enum.dart';
import 'package:flutter_training_cli/infrastructure/theme/font.style.dart';

class TMDBButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final ButtonType type;
  final ButtonSize size;
  final double? width;
  final VoidCallback? onPressed;

  const TMDBButton(
      {required this.label,
      this.icon,
      this.type = ButtonType.primary,
      this.size = ButtonSize.big,
      this.width,
      this.onPressed,
      super.key});

  double _setupFixedHeight() => size == ButtonSize.big ? 48 : 32;

  Size? _setupFixedSize() => width != null
      ? Size(width!, _setupFixedHeight())
      : Size.fromHeight(_setupFixedHeight());

  TextStyle _setupTextStyle() => switch (size) {
        ButtonSize.big => TMDBFontStyle.textLargeMedium,
        ButtonSize.mini => TMDBFontStyle.textSmalleMedium,
      };

  Widget _setupChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null && type != ButtonType.tertiary)
          Icon(
            icon,
            size: size == ButtonSize.big ? 15 : 10.5,
          ),
        if (icon != null && type != ButtonType.tertiary)
          const SizedBox(width: 4),
        Text(label)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        return FilledButton(
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            textStyle: _setupTextStyle(),
            fixedSize: _setupFixedSize(),
          ),
          child: _setupChild(),
        );
      case ButtonType.secondary:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            textStyle: _setupTextStyle(),
            fixedSize: _setupFixedSize(),
          ),
          child: _setupChild(),
        );
      case ButtonType.tertiary:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            textStyle: _setupTextStyle(),
            fixedSize: _setupFixedSize(),
          ),
          child: _setupChild(),
        );
    }
  }
}
