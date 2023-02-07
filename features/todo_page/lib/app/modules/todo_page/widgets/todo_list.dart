import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_lib/data/amplify_models/Todo.dart';
import 'package:todo_page/app/modules/todo_page/controllers/todo_page_controller.dart';
import 'package:todo_page/app/modules/todo_page/widgets/todo_item.dart';
import 'package:todo_page/generated/locales.g.dart';

class TodosList extends StatelessWidget {
  const TodosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<TodoPageController>(
      builder: (controller) {
        return controller.todos.isNotEmpty
            ? ListView(
                padding: const EdgeInsets.all(8),
                children: controller.todos
                    .map((todo) => TodoItem(todo: todo))
                    .toList())
            : Center(
                child: Text(LocaleKeys.add_todo_message.tr),
              );
      },
    );
  }
}
