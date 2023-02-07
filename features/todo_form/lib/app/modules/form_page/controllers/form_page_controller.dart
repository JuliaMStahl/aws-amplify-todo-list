import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routes_lib/app_pages.dart';
import 'package:shared_lib/data/amplify_models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

class FormPageController extends GetxController {
  late final TextEditingController nameController;
  late final TextEditingController descriptionController;

  @override
  void onInit() {
    nameController = TextEditingController();
    descriptionController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    descriptionController.dispose();
  }

  Future<void> saveTodo() async {
    final name = nameController.text;
    final description = descriptionController.text;

    final newTodo = Todo(
      name: name,
      description: description.isNotEmpty ? description : null,
      isComplete: false,
    );

    try {
      // to write data to DataStore, you simply pass an instance of a model to
      // Amplify.DataStore.save()
      await Amplify.DataStore.save(newTodo);
      // after creating a new to do, close the form
      // Be sure the context at that moment is still valid and mounted
      // if (isClosed) {
      //   // Navigator.of(context).pop();
      // }
      Get.offAllNamed(RedirectTo.ROUTES_TODO);
    } catch (e) {
      safePrint('An error occurred while saving Todo: $e');
    }
  }

}
