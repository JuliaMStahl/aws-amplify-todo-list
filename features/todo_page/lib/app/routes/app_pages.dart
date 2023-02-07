import 'package:get/get.dart';

import '../modules/todo_page/bindings/todo_page_binding.dart';
import '../modules/todo_page/views/todo_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODO_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.TODO_PAGE,
      page: () => const TodoPageView(),
      binding: TodoPageBinding(),
    ),
  ];
}
