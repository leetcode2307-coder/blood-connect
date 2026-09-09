import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum ButtonStyleType { primary, secondary, outline }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonStyleType styleType;
  final Widget? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.styleType = ButtonStyleType.primary,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    BorderSide borderSide = BorderSide.none;

    switch (styleType) {
      case ButtonStyleType.primary:
        backgroundColor = AppTheme.primaryContainer;
        textColor = AppTheme.surfaceWhite;
        break;
      case ButtonStyleType.secondary:
        backgroundColor = AppTheme.secondary;
        textColor = AppTheme.surfaceWhite;
        break;
      case ButtonStyleType.outline:
        backgroundColor = AppTheme.surfaceWhite;
        textColor = AppTheme.onBackground;
        borderSide = const BorderSide(color: AppTheme.surfaceBorder, width: 1);
        break;
    }

    return SizedBox(
      width: double.infinity,
      height: 48, // As per DESIGN.md
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // 0.5rem as per DESIGN.md
            side: borderSide,
          ),
        ),
        onPressed: onPressed,
        child: icon == null
            ? Text(
                text,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ).copyWith(color: textColor),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(width: 8),
                  Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ).copyWith(color: textColor),
                  ),
                ],
              ),
      ),
    );
  }
}
