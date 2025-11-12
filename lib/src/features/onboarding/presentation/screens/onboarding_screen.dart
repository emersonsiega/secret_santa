import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_state.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_viewmodel.dart';
import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/extensions/failures.dart';
import 'package:secret_santa/src/shared/presentation/widgets/snackbar_controller.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(onboardingViewModelProvider);

    ref.listen(onboardingViewModelProvider, (prev, curr) {
      if ((prev?.isLoading ?? true) && curr.hasError) {
        if (curr.error is AsyncRequestFailure) {
          SnackbarController().showError(context, (curr.error as AsyncRequestFailure).localized());
        }
      }
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            switch (viewModel) {
              AsyncData(:final value) => Text(switch (value) {
                InitialOnboardingState() => 'Waiting',
                SmsSentState() => 'SMS Sent',
                UserLoggedIn() => 'Logged in!',
              }, textAlign: TextAlign.center),
              AsyncLoading() => CircularProgressIndicator(),
              AsyncError(:final error) => Text(error.toString(), textAlign: TextAlign.center),
            },
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ref.read(onboardingViewModelProvider.notifier).createAccount();
                },
                child: Text("Create account"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await ref.read(onboardingViewModelProvider.notifier).validate();
                },
                child: Text("Log in"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
