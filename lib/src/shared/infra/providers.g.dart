// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appWriteClient)
const appWriteClientProvider = AppWriteClientProvider._();

final class AppWriteClientProvider
    extends
        $FunctionalProvider<
          AppwriteClientAdapter,
          AppwriteClientAdapter,
          AppwriteClientAdapter
        >
    with $Provider<AppwriteClientAdapter> {
  const AppWriteClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appWriteClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appWriteClientHash();

  @$internal
  @override
  $ProviderElement<AppwriteClientAdapter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppwriteClientAdapter create(Ref ref) {
    return appWriteClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppwriteClientAdapter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppwriteClientAdapter>(value),
    );
  }
}

String _$appWriteClientHash() => r'1a408b956395687b4cc93b858969ea09bef622d9';
