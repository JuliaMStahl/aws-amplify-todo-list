import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routes_lib/app_pages.dart';
import 'package:todo_page/app/modules/todo_page/widgets/todo_list.dart';
import 'package:todo_page/generated/locales.g.dart';
import '../controllers/todo_page_controller.dart';

class TodoPageView extends GetView<TodoPageController> {
  const TodoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.todo_list.tr),
        backgroundColor: Colors.pink,
      ),
      body: controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : const TodosList(),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pink,
        onPressed: () => Get.toNamed(RedirectTo.ROUTES_FORM),
        tooltip: LocaleKeys.add_todo.tr,
        label: Row(
          children: [const Icon(Icons.add), Text(LocaleKeys.add_todo.tr)],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
