import 'dart:async';
import 'package:get/get.dart';
import 'package:shared_lib/data/amplify_models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

class TodoPageController extends GetxController {
  late StreamSubscription<QuerySnapshot<Todo>> subscription;

  final isLoading = true.obs;
  RxList<Todo> todos = <Todo>[].obs;

  @override
  void onInit() {
    subscription = Amplify.DataStore.observeQuery(Todo.classType)
        .listen((QuerySnapshot<Todo> snapshot) {
      isLoading.value = false;
      todos.value = snapshot.items;
    });
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    subscription.cancel();
  }
}
