import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routes_lib/app_pages.dart';
import 'package:translation_lib/locales.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    initialRoute: RedirectTo.ROUTES_SPLASH,
    getPages: AppPages.routes,
    translationsKeys: AppTranslation.translations,
    locale: const Locale('pt', 'BR'),
    debugShowCheckedModeBanner: false,
  ));
}