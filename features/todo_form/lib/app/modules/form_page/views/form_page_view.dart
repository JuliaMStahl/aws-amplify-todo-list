import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/form_page_controller.dart';

class FormPageView extends GetView<FormPageController> {
  const FormPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.add_todo.tr),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: LocaleKeys.name.tr,
                ),
              ),
              TextFormField(
                controller: controller.descriptionController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: LocaleKeys.description.tr,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: controller.saveTodo,
                child: Text(LocaleKeys.save.tr),
              )
            ],
          ),
        ),
      ),
    );
  }
}
