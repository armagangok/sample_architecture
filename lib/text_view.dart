import 'package:flutter/material.dart';
import 'package:sample_architecture/core/base/view/base_view.dart';

import 'core/base/state/base_state.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      controller: "controller",
      onPageBuilder: (context, value) {
        return Column(
          children: const [],
        );
      },
    );
  }
}
