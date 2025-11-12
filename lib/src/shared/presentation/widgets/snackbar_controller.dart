import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

class SnackbarController {
  SnackbarController._();
  static final _instance = SnackbarController._();
  factory SnackbarController() => _instance;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? _snackBarController;

  void show(BuildContext context, String message, {Duration duration = const Duration(seconds: 3)}) {
    _show(
      context: context,
      message: message,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.darkText),
      backgroundColor: AppColors.background,
      duration: duration,
    );
  }

  void showSuccess(BuildContext context, String message, {Duration duration = const Duration(seconds: 3)}) {
    _show(
      context: context,
      message: message,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.lightText),
      backgroundColor: AppColors.success,
      duration: duration,
    );
  }

  void showError(BuildContext context, String message, {Duration duration = const Duration(seconds: 3)}) {
    _show(
      context: context,
      message: message,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.lightText),
      backgroundColor: AppColors.warning,
      duration: duration,
    );
  }

  void _show({
    required BuildContext context,
    required String message,
    required Color backgroundColor,
    TextStyle? textStyle,
    required Duration duration,
  }) {
    hide();
    final snackBar = SnackBar(
      content: Text(message, style: textStyle),
      duration: duration,
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16),
      showCloseIcon: true,
      closeIconColor: textStyle?.color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6)),
    );

    _snackBarController = ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void hide() {
    try {
      _snackBarController?.close();
    } catch (_) {
      // IGNORED
    }
    _snackBarController = null;
  }
}
