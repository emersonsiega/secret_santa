// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnboardingViewModel)
const onboardingViewModelProvider = OnboardingViewModelProvider._();

final class OnboardingViewModelProvider
    extends $AsyncNotifierProvider<OnboardingViewModel, OnboardingState> {
  const OnboardingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingViewModelProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[authRepositoryProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          OnboardingViewModelProvider.$allTransitiveDependencies0,
          OnboardingViewModelProvider.$allTransitiveDependencies1,
        ],
      );

  static const $allTransitiveDependencies0 = authRepositoryProvider;
  static const $allTransitiveDependencies1 =
      AuthRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$onboardingViewModelHash();

  @$internal
  @override
  OnboardingViewModel create() => OnboardingViewModel();
}

String _$onboardingViewModelHash() =>
    r'7c50f61c4839239c1f819778e20f67b1ceea7c29';

abstract class _$OnboardingViewModel extends $AsyncNotifier<OnboardingState> {
  FutureOr<OnboardingState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<OnboardingState>, OnboardingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OnboardingState>, OnboardingState>,
              AsyncValue<OnboardingState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
