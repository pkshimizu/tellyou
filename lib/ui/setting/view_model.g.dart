// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettingViewModel)
const settingViewModelProvider = SettingViewModelProvider._();

final class SettingViewModelProvider
    extends $NotifierProvider<SettingViewModel, SettingState> {
  const SettingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingViewModelHash();

  @$internal
  @override
  SettingViewModel create() => SettingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingState>(value),
    );
  }
}

String _$settingViewModelHash() => r'13d9e19c5bd4774f84c389c6af621ba3b2fe3589';

abstract class _$SettingViewModel extends $Notifier<SettingState> {
  SettingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SettingState, SettingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SettingState, SettingState>,
              SettingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
