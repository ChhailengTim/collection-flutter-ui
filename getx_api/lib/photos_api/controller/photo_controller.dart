import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/photos_api/model/photo_model.dart';

class PhotoController extends GetxController {
  final api = ApiBaseHelper();
  final photo = PhotoModel().obs;
  final listPhoto = <PhotoModel>[].obs;

  Future getListPhoto() async {
    api
        .onNetworkRequesting(
      urlFull: "https://jsonplaceholder.typicode.com/photos",
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then((value) {
      listPhoto.clear();
      value.map((e) {
        photo.value = PhotoModel.fromJson(e);
        listPhoto.add(photo.value);
      }).toList();
    });
  }
}
