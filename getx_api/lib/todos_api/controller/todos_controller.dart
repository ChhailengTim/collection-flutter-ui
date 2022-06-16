import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/todos_api/model/todos_model.dart';

class TodosController extends GetxController {
  final api = ApiBaseHelper();
  final todos = TodosModel().obs;
  final listTodos = <TodosModel>[].obs;

  Future getListTodos() async {
    api
        .onNetworkRequesting(
      urlFull: "https://jsonplaceholder.typicode.com/todos",
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then((value) {
      value.map((e) {
        todos.value = TodosModel.fromJson(e);
        listTodos.add(todos.value);
      }).toList();
    });
  }
}
