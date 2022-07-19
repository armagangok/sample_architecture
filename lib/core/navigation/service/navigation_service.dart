import 'package:flutter/material.dart';
import 'package:sample_architecture/core/navigation/service/base_service.dart';

class NavigationService implements BaseNavigation {
  NavigationService._();
  static final instance = NavigationService._();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Future<void> goTo({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data!);
  }

  @override
  Future<void> removeThenGoTo({String? path, Object? data}) async {
    await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, (route) => false);
  }
}
