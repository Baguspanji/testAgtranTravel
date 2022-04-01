import 'package:get/route_manager.dart';
import 'package:test_app/src/ui/nav_ui.dart';
import 'package:test_app/src/ui/splash_ui.dart';

// We use name route
// All our routes will be available here

final List<GetPage<dynamic>>? routes = [
  GetPage(
    name: SplashUI.routeName,
    page: () => SplashUI(),
  ),
  GetPage(
    name: NavBarUI.routeName,
    page: () => NavBarUI(),
  ),
];

class CommonArgument<T> {
  final T? object;
  final int? id;

  const CommonArgument({this.object, this.id});
}
