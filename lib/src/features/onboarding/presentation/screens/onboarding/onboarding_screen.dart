import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding/onboarding_viewmodel.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(onboardingViewModelProvider);

    ref.listen(onboardingViewModelProvider, (prev, curr) {
      if (prev?.text != curr.text) {
        Future.delayed(Duration(seconds: 1), () {
          if (!context.mounted) return;

          context.goNamed('history');
        });
      }
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(viewModel.text, textAlign: TextAlign.center),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ref.read(onboardingViewModelProvider.notifier).update();
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
