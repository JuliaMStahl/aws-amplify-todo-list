import 'package:get/get.dart';
import 'package:todo_page/app/routes/app_pages.dart' as todo_routes;
import 'package:todo_form/app/routes/app_pages.dart' as form_routes;
import 'package:splash/app/routes/app_pages.dart' as splash_routes;

class AppPages {
  AppPages._();

  static List<GetPage> get routes {
    List<GetPage> _routesFull = <GetPage>[];
    _routesFull.addAll(todo_routes.AppPages.routes);
    _routesFull.addAll(form_routes.AppPages.routes);
    _routesFull.addAll(splash_routes.AppPages.routes);

    return _routesFull;
  }
}

abstract class RedirectTo {
  RedirectTo._();

  static const ROUTES_TODO = todo_routes.Routes.TODO_PAGE;
  static const ROUTES_FORM = form_routes.Routes.FORM_PAGE;
  static const ROUTES_SPLASH = splash_routes.Routes.SPLASH_PAGE;
}
