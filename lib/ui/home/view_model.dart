import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tellyou/ui/home/state.dart';

part 'view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return const HomeState();
  }

  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
