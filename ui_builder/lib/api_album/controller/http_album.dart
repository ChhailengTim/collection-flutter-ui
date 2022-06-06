import 'package:ui_builder/api_album/module/album.dart';
import 'package:http/http.dart' as http;

class HttpAlbum {
  Future<List<Album>?> getAlbum() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/albums");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return albumFromJson(json);
    }
    return null;
  }
}
