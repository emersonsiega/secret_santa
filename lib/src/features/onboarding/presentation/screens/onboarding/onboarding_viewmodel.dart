import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding/onboarding_state.dart';

part 'onboarding_viewmodel.g.dart';

@riverpod
class OnboardingViewModel extends _$OnboardingViewModel {
  @override
  OnboardingState build() {
    return OnboardingState();
  }

  void update() {
    state = OnboardingState(text: "Riverpod is working!!");
  }
}
