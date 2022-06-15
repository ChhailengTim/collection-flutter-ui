import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/comments_api/model/comment_model.dart';

class CommentController extends GetxController {
  final apibasehelper = ApiBaseHelper();
  final comment = CommentModel().obs;
  final listComment = <CommentModel>[].obs;

  Future getListComment() async {
    apibasehelper
        .onNetworkRequesting(
            urlFull: "https://jsonplaceholder.typicode.com/comments",
            methode: METHODE.get,
            isAuthorize: false)
        .then((value) {
      listComment.clear();
      value.map(
        (e) {
          comment.value = CommentModel.fromJson(e);
          listComment.add(comment.value);
        },
      ).toList();
    });
  }
}
