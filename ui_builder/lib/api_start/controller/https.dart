import 'package:ui_builder/api_start/module/post.dart';
import 'package:http/http.dart' as http;

class HttpsScreen {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var respond = await client.get(uri);
    return null;
  }
}
