import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/extensions/build_context.dart';

class LargeTextButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool loading;

  const LargeTextButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(.symmetric(vertical: 16, horizontal: 24)),
        textStyle: WidgetStatePropertyAll(context.textTheme.titleMedium),
        foregroundColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return AppColors.lightText.shade700;
          }

          return AppColors.lightText;
        }),
        iconColor: WidgetStateColor.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return AppColors.lightText.shade700;
          }

          return AppColors.lightText;
        }),
      ),
      icon: loading
          ? SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(AppColors.lightText),
              ),
            )
          : Icon(icon, size: 18),
      label: Text(label),
      onPressed: loading ? null : onPressed,
    );
  }
}
