import 'package:mobx/mobx.dart';

part 'test_controller.g.dart';

class TestController = _TestControllerBase with _$TestController;

abstract class _TestControllerBase with Store {
  @observable
  double number1 = 0;

  @computed
  bool get isEven => number1 % 2 == 0;

  @action
  void incrementNumber() {
    number1 += 1;
    print(number1);
  }
}
