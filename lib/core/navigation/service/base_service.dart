abstract class BaseNavigation {
  Future<void> goTo({String path, Object data});
  Future<void> removeThenGoTo({String? path, Object? data});
}
