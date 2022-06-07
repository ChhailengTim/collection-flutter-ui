import 'package:ui_builder/api_photos/module/photos.dart';
import 'package:http/http.dart' as http;

class HttpPhotos {
  Future<List<PhotosApi>?> getPhotos() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return photosApiFromJson(json);
    }
    return null;
  }
}
