import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

ThemeData buildTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.lightText,
      secondary: AppColors.secondary,
      onSecondary: AppColors.lightText,
      error: AppColors.warning,
      onError: AppColors.lightText,
      surface: AppColors.background.shade100,
      onSurface: AppColors.darkText,
    ),
  );
}
