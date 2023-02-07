import 'package:get/get.dart';

import '../controllers/todo_page_controller.dart';

class TodoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoPageController>(
      () => TodoPageController(),
    );
  }
}
