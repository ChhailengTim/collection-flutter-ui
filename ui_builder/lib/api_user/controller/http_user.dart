import 'package:http/http.dart' as http;
import 'package:ui_builder/api_user/model/user.dart';

class HttpUser {
  Future<List<User>?> getUser() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var respone = await client.get(uri);
    if (respone.statusCode == 200) {
      var json = respone.body;
      return userFromJson(json);
    }
    return null;
  }
}
