import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const OnboardingState._();

  factory OnboardingState({
    @Default('Riverpod set up') String text,
  }) = _OnboardingState;
}
