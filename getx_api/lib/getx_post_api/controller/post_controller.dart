import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/getx_post_api/model/post_model.dart';

class PostController extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final posts = ModelPost().obs;
  final listPosts = <ModelPost>[].obs;
  Future getPost() async {
    apibasehelper
        .onNetworkRequesting(
            urlFull: "https://jsonplaceholder.typicode.com/posts",
            methode: METHODE.get,
            isAuthorize: false)
        .then((value) => {
              value.map((e) {
                posts.value = ModelPost.fromJson(e);
                listPosts.add(posts.value);
              }).toList(),
            });
  }
}
