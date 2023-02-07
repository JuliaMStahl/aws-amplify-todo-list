import 'package:get/get.dart';
import 'package:routes_lib/app_pages.dart';
import 'package:shared_lib/repositories/amplify_repository.dart';

class SplashPageController extends GetxController {
  final amplifyRepository = Get.find<AmplifyRepository>();

  @override
  void onInit() {
    Future.delayed(Duration.zero, () async {
      await amplifyRepository.configureAmplify();
      Get.offAllNamed(RedirectTo.ROUTES_TODO);
    });
    super.onInit();
  }

}
