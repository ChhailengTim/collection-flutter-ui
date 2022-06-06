import 'package:ui_builder/api_comment/module/comment.dart';
import 'package:http/http.dart' as http;

class HttpComment {
  Future<List<Comment>?> getComment() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentFromJson(json);
    }
    return null;
  }
}
