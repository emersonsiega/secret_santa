import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_state.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_viewmodel.dart';
import 'package:secret_santa/src/features/onboarding/presentation/widgets/large_elevated_button.dart';
import 'package:secret_santa/src/features/onboarding/presentation/widgets/large_text_button.dart';
import 'package:secret_santa/src/features/onboarding/presentation/widgets/step_indicator.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';
import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/design_system/images.dart';
import 'package:secret_santa/src/shared/presentation/extensions/build_context.dart';
import 'package:secret_santa/src/shared/presentation/extensions/failures.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';
import 'package:secret_santa/src/shared/presentation/widgets/custom_phone_form_field.dart';
import 'package:secret_santa/src/shared/presentation/widgets/snackbar_controller.dart';

part 'create_account_view.dart';
part 'intro_view.dart';
part 'login_view.dart';
part 'sms_code_validation_view.dart';
part 'onboarding_screen.g.dart';

enum _OnboardingSteps {
  intro(0),
  login(1),
  createAccount(1),
  smsValidation(2)
  ;

  final int step;
  const _OnboardingSteps(this.step);
}

typedef _OnboardingStepData = (_OnboardingSteps?, _OnboardingSteps);

@riverpod
class _OnboardingStep extends _$OnboardingStep {
  @override
  _OnboardingStepData build() {
    return (null, .intro);
  }

  void next() {
    final step = state.$2.step;
    final nextState = _OnboardingSteps.values.firstWhere(
      (item) => item.step > step,
      orElse: () => state.$2,
    );

    if (nextState != state.$2) {
      state = (state.$2, nextState);
    }
  }

  void changeTo(_OnboardingSteps step) {
    if (step != state.$2) {
      final previous = _OnboardingSteps.values.firstWhere(
        (item) => item.step < state.$2.step,
        orElse: () => .intro,
      );
      state = (previous != step ? previous : null, step);
    }
  }
}

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(onboardingViewModelProvider);
    final step = ref.watch(_onboardingStepProvider);
    final changeStep = ref.read(_onboardingStepProvider.notifier).changeTo;

    ref.listen(onboardingViewModelProvider, (prev, curr) {
      if (prev != curr) {
        if ((prev?.isLoading ?? true) && curr.hasError) {
          if (curr.error is AsyncRequestFailure) {
            SnackbarController().showError(context, (curr.error as AsyncRequestFailure).localized());
            return;
          }
        }

        if (curr.value case SmsSentState()) {
          logger.d('SMS SENT. CHANGING PAGE...');
          ref.read(_onboardingStepProvider.notifier).next();
        }
      }
    });

    void showPreviousStep() {
      if (step.$1 != null && step.$2.step > 0) {
        changeStep(step.$1!);
      }
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: .light,
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (_, _) => showPreviousStep(),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: AppColors.primary,
              body: AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                reverseDuration: const Duration(milliseconds: 350),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (child, animation) => Stack(
                  children: [
                    ScaleTransition(
                      scale:
                          Tween<double>(
                            begin: 0.97,
                            end: 1.0,
                          ).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeIn,
                            ),
                          ),
                      alignment: .center,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    ),
                    IgnorePointer(
                      child: FadeTransition(
                        opacity:
                            Tween<double>(
                              begin: 0.6,
                              end: 0.0,
                            ).animate(
                              CurvedAnimation(
                                parent: animation,
                                curve: Curves.easeInCubic,
                              ),
                            ),
                        child: Container(
                          width: context.screenSize.width,
                          height: context.screenSize.height,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                child: SafeArea(
                  key: ValueKey(step.$2),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        pinned: true,
                        stretch: true,
                        expandedHeight: context.screenSize.height * 0.25,
                        flexibleSpace: FlexibleSpaceBar(
                          background: SvgPicture.asset(
                            AppImages.christmasBalls,
                            width: context.screenSize.width,
                            fit: .cover,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: .symmetric(horizontal: 20),
                        sliver: SliverFillRemaining(
                          hasScrollBody: false,
                          fillOverscroll: false,
                          child: Column(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 5,
                                child: Theme(
                                  data: context.theme.copyWith(
                                    textTheme: TextTheme(
                                      bodyLarge: TextStyle(color: AppColors.lightText),
                                    ),
                                    inputDecorationTheme: context.theme.inputDecorationTheme.copyWith(
                                      labelStyle: TextStyle(color: AppColors.lightText),
                                      helperStyle: TextStyle(color: AppColors.lightText.shade600),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 2, color: AppColors.lightText.shade400),
                                        borderRadius: .circular(4),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 2, color: AppColors.lightText.shade400),
                                        borderRadius: .circular(4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 3, color: AppColors.lightText.shade600),
                                        borderRadius: .circular(4),
                                      ),
                                    ),
                                  ),
                                  child: switch (step.$2) {
                                    .intro => _IntroView(),
                                    .createAccount => _CreateAccountView(),
                                    .login => _LoginView(),
                                    .smsValidation => _SMSCodeValidationView(),
                                  },
                                ),
                              ),
                              const SizedBox(height: 36),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              persistentFooterAlignment: .centerEnd,
              persistentFooterDecoration: BoxDecoration(),
              persistentFooterButtons: viewModel.value != null
                  ? switch (step.$2) {
                      .intro => [
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            StepIndicator(focused: true),
                            StepIndicator(),
                            StepIndicator(),
                          ],
                        ),
                      ],
                      .createAccount => [
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            StepIndicator(
                              onTap: () {
                                changeStep(.intro);
                              },
                            ),
                            StepIndicator(focused: true),
                            StepIndicator(),
                          ],
                        ),
                      ],
                      .login => [
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            StepIndicator(
                              onTap: () {
                                changeStep(.intro);
                              },
                            ),
                            StepIndicator(focused: true),
                            StepIndicator(),
                          ],
                        ),
                      ],
                      .smsValidation => [
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            StepIndicator(
                              onTap: () {
                                changeStep(.intro);
                              },
                            ),
                            StepIndicator(onTap: showPreviousStep),
                            StepIndicator(focused: true),
                          ],
                        ),
                      ],
                    }
                  : null,
            ),
            if (viewModel case AsyncLoading())
              Container(
                width: context.screenSize.width,
                height: context.screenSize.height,
                color: AppColors.primary.withValues(alpha: 0.4),
                alignment: .center,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(AppColors.lightText),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
