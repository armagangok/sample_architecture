// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TestController on _TestControllerBase, Store {
  Computed<bool>? _$isEvenComputed;

  @override
  bool get isEven => (_$isEvenComputed ??= Computed<bool>(() => super.isEven,
          name: '_TestControllerBase.isEven'))
      .value;

  late final _$number1Atom =
      Atom(name: '_TestControllerBase.number1', context: context);

  @override
  double get number1 {
    _$number1Atom.reportRead();
    return super.number1;
  }

  @override
  set number1(double value) {
    _$number1Atom.reportWrite(value, super.number1, () {
      super.number1 = value;
    });
  }

  late final _$_TestControllerBaseActionController =
      ActionController(name: '_TestControllerBase', context: context);

  @override
  void incrementNumber() {
    final _$actionInfo = _$_TestControllerBaseActionController.startAction(
        name: '_TestControllerBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_TestControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number1: ${number1},
isEven: ${isEven}
    ''';
  }
}
