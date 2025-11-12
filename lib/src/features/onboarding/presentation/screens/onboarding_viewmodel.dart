import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_state.dart';
import 'package:secret_santa/src/shared/data/repositories/auth_repository.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';

part 'onboarding_viewmodel.g.dart';

@Riverpod(dependencies: [AuthRepository])
class OnboardingViewModel extends _$OnboardingViewModel {
  late final _authRepository = ref.read(authRepositoryProvider.notifier);

  @override
  Future<OnboardingState> build() async {
    return OnboardingState();
  }

  Future createAccount() async {
    state = AsyncLoading<OnboardingState>();

    final user = User(name: 'Emerson', phoneNumber: '+55 (46) 99912-5168');
    final response = await _authRepository.createAccount(user);
    state = response.fold(
      ifLeft: (error) => AsyncError(error, StackTrace.current),
      ifRight: (_) => AsyncData(OnboardingState.smsSent(user: user)),
    );
  }

  Future validate() async {
    if (state.value case SmsSentState(:final user)) {
      state = AsyncLoading<OnboardingState>();
      final response = await _authRepository.loginWithSMSCode(user, '123');
      state = response.fold(
        ifLeft: (error) => AsyncError(error, StackTrace.current),
        ifRight: (user) => AsyncData(OnboardingState.loggedIn(user: user)),
      );
    }
  }
}
