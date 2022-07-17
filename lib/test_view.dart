import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'core/base/state/base_state.dart';
import 'core/base/view/base_view.dart';
import 'test_controller.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  TestController? _controller;
  @override
  Widget build(BuildContext context) {
    return BaseView(
      controller: TestController(),
      onModelReady: (dynamic controller) => _controller = controller,
      onPageBuilder: (context, value) {
        return Scaffold(
          body: scaffoldBody,
          floatingActionButton: numberIncrement,
        );
      },
    );
  }

  //

  Widget get scaffoldBody => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          number1TextWidget,
        ],
      );

  //

  FloatingActionButton get numberIncrement {
    return FloatingActionButton(
      onPressed: () => _controller!.incrementNumber(),
    );
  }

  //

  Widget get number1TextWidget => Center(
        child: Column(
          children: [
            Observer(
              builder: (context) {
                return Text("is number even? ${_controller!.isEven}");
              },
            ),
            Observer(
              builder: (context) {
                return Text("${_controller!.number1}");
              },
            ),
          ],
        ),
      );
}
