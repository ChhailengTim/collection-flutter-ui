import 'package:ui_builder/api_start/module/post.dart';
import 'package:http/http.dart' as http;

class HttpsScreen {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
