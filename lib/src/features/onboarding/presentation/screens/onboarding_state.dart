import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';

part 'onboarding_state.freezed.dart';

@freezed
sealed class OnboardingState with _$OnboardingState {
  const OnboardingState._();

  factory OnboardingState() = InitialOnboardingState;

  factory OnboardingState.smsSent({required User user}) = SmsSentState;

  factory OnboardingState.loggedIn({required User user}) = UserLoggedIn;
}
