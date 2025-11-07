import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Onboarding', textAlign: TextAlign.center),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.goNamed('history');
                },
                child: Text("GO"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
