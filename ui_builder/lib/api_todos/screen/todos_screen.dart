import 'package:flutter/material.dart';
import 'package:ui_builder/api_todos/controller/http_todos.dart';
import 'package:ui_builder/api_todos/module/totos.dart';

class TodosScrenn extends StatefulWidget {
  const TodosScrenn({Key? key}) : super(key: key);

  @override
  State<TodosScrenn> createState() => _TodosScrennState();
}

class _TodosScrennState extends State<TodosScrenn> {
  List<Todos>? todos;
  bool check = true;

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  getTodos() async {
    todos = await HttpTodos().getTodos();
    if (todos != null) {
      setState(() {
        check = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos API"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: todos?.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                title: Row(
                  children: [
                    Text(
                      todos![index].userId.toString(),
                    ),
                    Text(
                      todos![index].id.toString(),
                      style: const TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
                subtitle: Text(
                  todos![index].title!,
                ),
                secondary: const Icon(Icons.beach_access),
                controlAffinity: ListTileControlAffinity.platform,
                value: todos![index].completed!,
                onChanged: (v) {
                  setState(() {
                    check = todos![index].completed!;
                  });
                });
          },
        ),
      ),
    );
  }
}
