import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

ThemeData buildTheme() {
  return ThemeData(
    brightness: .light,
    colorScheme: ColorScheme(
      brightness: .light,
      primary: AppColors.primary,
      onPrimary: AppColors.lightText,
      secondary: AppColors.secondary,
      onSecondary: AppColors.lightText,
      error: AppColors.warning,
      onError: AppColors.lightText,
      surface: AppColors.background.shade100,
      onSurface: AppColors.darkText,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: .dark,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(color: AppColors.darkText),
      displayMedium: TextStyle(color: AppColors.darkText),
      displaySmall: TextStyle(color: AppColors.darkText),
      headlineLarge: TextStyle(color: AppColors.darkText),
      headlineMedium: TextStyle(color: AppColors.darkText),
      headlineSmall: TextStyle(color: AppColors.darkText),
      titleLarge: TextStyle(color: AppColors.darkText),
      titleMedium: TextStyle(color: AppColors.darkText),
      titleSmall: TextStyle(color: AppColors.darkText),
      labelLarge: TextStyle(color: AppColors.darkText),
      labelMedium: TextStyle(color: AppColors.darkText),
      labelSmall: TextStyle(color: AppColors.darkText),
      bodyLarge: TextStyle(color: AppColors.darkText),
      bodyMedium: TextStyle(color: AppColors.darkText),
      bodySmall: TextStyle(color: AppColors.darkText),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: .circular(16),
          ),
        ),
        elevation: WidgetStatePropertyAll(3),
        shadowColor: WidgetStatePropertyAll(Colors.black),
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: false,
      labelStyle: TextStyle(color: AppColors.darkText),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.darkText.shade400),
        borderRadius: .circular(4),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.darkText.shade400),
        borderRadius: .circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: AppColors.darkText.shade600),
        borderRadius: .circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.warning),
        borderRadius: .circular(4),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: AppColors.warning.shade600),
        borderRadius: .circular(4),
      ),
    ),
  );
}
