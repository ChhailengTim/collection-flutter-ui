import 'package:http/http.dart' as http;
import 'package:ui_builder/api_todos/module/totos.dart';

class HttpTodos {
  Future<List<Todos>?> getTodos() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var respone = await client.get(uri);
    if (respone.statusCode == 200) {
      var json = respone.body;
      return todosFromJson(json);
    }
    return null;
  }
}
