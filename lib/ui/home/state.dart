import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(0) int counter}) = _HomeState;
}
