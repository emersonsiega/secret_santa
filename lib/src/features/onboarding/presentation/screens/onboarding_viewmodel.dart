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

  void start() {
    state = AsyncData(OnboardingState());
  }

  Future createAccount(String name, String phoneNumber) async {
    state = AsyncLoading<OnboardingState>();

    final user = User(name: name, phoneNumber: phoneNumber);
    final response = await _authRepository.createAccount(user);
    state = response.fold(
      ifLeft: (error) => AsyncError(error, StackTrace.current),
      ifRight: (_) => AsyncData(OnboardingState.smsSent(user: user)),
    );
  }

  Future logInWithPhoneNumber(String phoneNumber) async {
    state = AsyncLoading<OnboardingState>();

    final user = User(phoneNumber: phoneNumber);
    final response = await _authRepository.logInWithPhoneNumber(user);
    state = response.fold(
      ifLeft: (error) => AsyncError(error, StackTrace.current),
      ifRight: (_) => AsyncData(OnboardingState.smsSent(user: user)),
    );
  }

  Future validate(String smsCode) async {
    if (state.value case SmsSentState(:final user)) {
      state = AsyncLoading<OnboardingState>();

      final response = await _authRepository.validateSMSCode(user, smsCode);
      if (response.isRight && user.name.isNotEmpty) {
        await _authRepository.updateName(user);
      }
      state = response.fold(
        ifLeft: (error) => AsyncError(error, StackTrace.current),
        ifRight: (user) {
          if (user == null) return AsyncError({}, StackTrace.current);
          return AsyncData(OnboardingState.loggedIn(user: user));
        },
      );
    }
  }
}
