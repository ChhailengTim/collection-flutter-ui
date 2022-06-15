import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/comments_api/controller/comment_controller.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final CommentController commentController = Get.put(CommentController());
  @override
  void initState() {
    commentController.getListComment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx API comments"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: commentController.listComment.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  Text("${commentController.listComment[index].id}"),
                  Text("${commentController.listComment[index].postId}"),
                  Text("${commentController.listComment[index].name}"),
                  Text("${commentController.listComment[index].email}"),
                  Text("${commentController.listComment[index].body}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
