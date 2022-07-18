import 'package:provider/single_child_widget.dart';

class ProviderHelper {
  static late final _instance;

  static ProviderHelper get instance {
    _instance = ProviderHelper._init();
    return _instance;
  }

  ProviderHelper._init();

  List<SingleChildWidget> get providers => [];
}
