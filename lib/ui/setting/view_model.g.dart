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
    extends $AsyncNotifierProvider<SettingViewModel, SettingState> {
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
}

String _$settingViewModelHash() => r'103f0f6b7e76ddeee20a02f93d9f90a642a87e42';

abstract class _$SettingViewModel extends $AsyncNotifier<SettingState> {
  FutureOr<SettingState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<SettingState>, SettingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SettingState>, SettingState>,
              AsyncValue<SettingState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
