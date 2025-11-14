// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_OnboardingStep)
const _onboardingStepProvider = _OnboardingStepProvider._();

final class _OnboardingStepProvider
    extends $NotifierProvider<_OnboardingStep, _OnboardingStepData> {
  const _OnboardingStepProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_onboardingStepProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_onboardingStepHash();

  @$internal
  @override
  _OnboardingStep create() => _OnboardingStep();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(_OnboardingStepData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<_OnboardingStepData>(value),
    );
  }
}

String _$_onboardingStepHash() => r'1c9538a5f0f3967d3756154b62ebfcb8866984d9';

abstract class _$OnboardingStep extends $Notifier<_OnboardingStepData> {
  _OnboardingStepData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<_OnboardingStepData, _OnboardingStepData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<_OnboardingStepData, _OnboardingStepData>,
              _OnboardingStepData,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
