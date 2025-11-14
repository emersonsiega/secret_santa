import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

class StepIndicator extends StatelessWidget {
  final bool focused;
  final VoidCallback? onTap;

  const StepIndicator({
    super.key,
    this.focused = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(50),
      child: SizedBox(
        width: 24,
        height: 24,
        child: Center(
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: focused ? AppColors.lightText.shade100 : AppColors.lightText.shade600,
              shape: .circle,
            ),
          ),
        ),
      ),
    );
  }
}
