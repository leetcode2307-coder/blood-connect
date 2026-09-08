import 'package:flutter/material.dart';

class AppTheme {
  // Colors based on DESIGN.md
  static const Color surface = Color(0xFFF7F9FB);
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF8F000D);
  static const Color primaryContainer = Color(0xFFB22222);
  static const Color background = Color(0xFFF7F9FB);
  static const Color onBackground = Color(0xFF191C1E);
  static const Color secondary = Color(0xFF1A2B3C); // 'Healthcare Navy'
  static const Color surfaceBorder = Color(0xFFE2E8F0);

  // Typography scaling
  static const TextStyle display = TextStyle(
    fontFamily: 'Inter',
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 44 / 36,
    letterSpacing: -0.02 * 36,
    color: onBackground,
  );

  static const TextStyle headlineLgMobile = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
    color: onBackground,
  );

  static const TextStyle bodyLg = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
    color: onBackground,
  );

  static const TextStyle bodyMd = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: onBackground,
  );

  static const TextStyle labelMd = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    letterSpacing: 0.05 * 12,
  );

  static ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        surface: surface,
        background: background,
      ),
      fontFamily: 'Inter',
      useMaterial3: true,
    );
  }
}
