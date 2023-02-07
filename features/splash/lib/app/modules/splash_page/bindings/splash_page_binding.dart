import 'package:get/get.dart';
import 'package:shared_lib/repositories/amplify_repository.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AmplifyRepository(), permanent: true);
    Get.put(SplashPageController());
  }
}
