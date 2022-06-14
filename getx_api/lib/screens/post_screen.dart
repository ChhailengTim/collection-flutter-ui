import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/getx_post_api/controller/post_controller.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostController postController = Get.put(
      PostController(),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX Post API"),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: postController.listPosts.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text("${postController.listPosts[index].id}"),
                        ],
                      );
                    }),
              ),
              const Text("data")
            ]))
          ],
        ));
  }
}
