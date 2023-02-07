import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

class FormPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormPageController>(
      () => FormPageController(),
    );
  }
}
