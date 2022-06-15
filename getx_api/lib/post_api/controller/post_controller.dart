import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/api_base_helper/api_base_helper.dart';
import 'package:getx_api/post_api/model/post_model.dart';

///Fetch Post by Virak
class Virak extends GetxController {
  final apiBaseHelper = ApiBaseHelper();
  final postmodel = PostModel().obs;
  final listpost = <PostModel>[].obs;
  Future onFetchPost() async {
    apiBaseHelper
        .onNetworkRequesting(
            urlFull: 'https://jsonplaceholder.typicode.com/posts',
            methode: METHODE.get,
            isAuthorize: false)
        .then(
      (response) {
        listpost.clear();
        response.map(
          (e) {
            postmodel.value = PostModel.fromJson(e);
            listpost.add(postmodel.value);
          },
        ).toList();
      },
    ).onError((ErrorModel error, stackTrace) {
      debugPrint('Something Error ${error.bodyString}');
    });
  }
}
