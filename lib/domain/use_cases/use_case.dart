abstract class UseCase<P, R> {
  Future<R> call(P params) async {
    return await execute(params);
  }

  Future<R> execute(P params);
}
