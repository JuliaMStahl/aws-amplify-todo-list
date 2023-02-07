import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
