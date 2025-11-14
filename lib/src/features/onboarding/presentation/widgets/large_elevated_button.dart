import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/extensions/build_context.dart';

class LargeElevatedButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool loading;

  const LargeElevatedButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(.symmetric(vertical: 16, horizontal: 24)),
      ),
      icon: loading
          ? SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(AppColors.primary),
              ),
            )
          : Icon(
              icon,
              size: 18,
              color: AppColors.darkText,
            ),
      label: Text(
        label,
        style: context.textTheme.titleMedium?.copyWith(color: AppColors.darkText),
      ),
      onPressed: loading ? null : onPressed,
    );
  }
}
