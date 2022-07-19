import 'package:flutter/material.dart';
import 'package:sample_architecture/core/navigation/navigation_constants.dart';

import '../../test_view.dart';

// class NavigationRoute {
//   NavigationRoute._();
//   static final instance = NavigationRoute._();

//   Route<dynamic> generateRoute(RouteSettings args) {
//     return MaterialPageRoute(
//       builder: (context) {
//         switch (args.name) {
//           case NavigationConstants.testView:
//             return MaterialPageRoute(builder: (context) => const TestView());

//           default:
//             return MaterialPageRoute(
//               builder: (context) => const Scaffold(
//                 body: Text("not found"),
//               ),
//             );
//         }
//       },
//     );
//   }
// }
class NavigatorRoute {
  NavigatorRoute._();
  static final instance = NavigatorRoute._();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.testView:
        return navigate(viewName: const TestView());
      default:
        return navigate();
    }
  }

  MaterialPageRoute<dynamic> navigate({Widget? viewName}) =>
      MaterialPageRoute(builder: (context) => viewName!);
}
