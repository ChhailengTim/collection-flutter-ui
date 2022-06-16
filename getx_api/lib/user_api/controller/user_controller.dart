import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/user_api/model/user_model.dart';

class UserController extends GetxController {
  final api = ApiBaseHelper();
  final users = UserModel().obs;
  final listUsers = <UserModel>[].obs;

  Future getListUsers() async {
    api
        .onNetworkRequesting(
      urlFull: "https://jsonplaceholder.typicode.com/users",
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then((value) {
      value.map((e) {
        users.value = UserModel.fromJson(e);
        listUsers.add(users.value);
      }).toList();
    });
  }
}
