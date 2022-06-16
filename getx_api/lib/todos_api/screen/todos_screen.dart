import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/todos_api/controller/todos_controller.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  final TodosController todosController = Get.put(TodosController());
  @override
  void initState() {
    todosController.getListTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx API Todos"),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: todosController.listTodos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("${todosController.listTodos[index].id}, "),
                  Text("${todosController.listTodos[index].userId}"),
                  Checkbox(
                    value: todosController.listTodos[index].completed!,
                    onChanged: (v) {
                      todosController.listTodos[index].completed!;
                    },
                  ),
                  Text(
                    "${todosController.listTodos[index].title}",
                  ),
                ],
              );
            }),
      ),
    );
  }
}
