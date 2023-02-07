import 'package:get/get.dart';

import '../modules/form_page/bindings/form_page_binding.dart';
import '../modules/form_page/views/form_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORM_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.FORM_PAGE,
      page: () => const FormPageView(),
      binding: FormPageBinding(),
    ),
  ];
}
