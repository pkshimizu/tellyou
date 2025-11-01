import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tellyou/domain/models/github.dart';

part "state.freezed.dart";

enum SettingView { general, github }

@freezed
sealed class SettingState with _$SettingState {
  const factory SettingState({
    @Default(SettingView.general) SettingView selectedView,
    @Default([]) List<GitHubAccount> accounts,
  }) = _SettingState;
}
