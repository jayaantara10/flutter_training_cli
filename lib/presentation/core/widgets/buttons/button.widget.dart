import 'package:flutter/material.dart';
import 'package:flutter_training_cli/presentation/core/enum/button.size.enum.dart';
import 'package:flutter_training_cli/presentation/core/enum/button.type.enum.dart';
import 'package:flutter_training_cli/infrastructure/theme/font.style.dart';

class TMDBButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final ButtonType? type;
  final ButtonSize? size;
  final bool? enabled;
  final VoidCallback onPressed;

  const TMDBButton(
      {required this.label,
      this.icon,
      this.type,
      this.size,
      this.enabled,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme colorScheme = theme.colorScheme;

    return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
            backgroundColor: colorScheme.secondary,
            minimumSize: const Size.fromHeight(48),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: icon == null
            ? Text(
                label,
                style: TMDBFontStyle.textLargeMedium,
              )
            : Row(
                children: [
                  Icon(icon),
                  Text(
                    label,
                    style: TMDBFontStyle.textLargeMedium,
                  )
                ],
              ));
  }
}
