import 'package:get/get.dart';
import 'package:getx_api/album_api/model/album_model.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';

class AlbumController extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final album = AlbumModel().obs;
  final listAlbum = <AlbumModel>[].obs;

  Future getListAlbum() async {
    apibasehelper
        .onNetworkRequesting(
      urlFull: "https://jsonplaceholder.typicode.com/albums",
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then((value) {
      listAlbum.clear();
      value.map((e) {
        album.value = AlbumModel.fromJson(e);
        listAlbum.add(album.value);
      }).toList();
    });
  }
}
