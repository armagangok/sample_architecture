import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/state/base_state.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/extension/string_extension.dart';
import '../../../core/initialization/lang/language_manager.dart';
import '../../../core/initialization/lang/locale_keys.g.dart';
import '../controller/test_controller.dart';

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
      controller: TestController(ctx: context),
      onModelReady: (dynamic controller) => _controller = controller,
      onPageBuilder: (context, value) {
        return Scaffold(
          appBar: homeAppBar(),
          body: scaffoldBody,
          floatingActionButton: numberIncrement,
        );
      },
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text(
        LocaleKeys.welcome.locale,
      ),
      actions: [change()],
    );
  }

  //

  IconButton change() {
    return IconButton(
      onPressed: () async {
        context.setLocale(LanguageManager.instance.enLocale);
        _controller!.changeTheme();
        await _controller!.getSampleDataFromAPI();
      },
      icon: const Icon(Icons.change_circle),
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
