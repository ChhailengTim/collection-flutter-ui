import 'package:flutter/material.dart';
import 'package:ui_builder/api_comment/controller/http_comment.dart';
import 'package:ui_builder/api_comment/module/comment.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List<Comment>? comments;
  var isLoadComment = false;

  @override
  void initState() {
    super.initState();
    getComment();
  }

  getComment() async {
    comments = await HttpComment().getComment();
    if (comments != null) {
      setState(() {
        isLoadComment = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment API"),
      ),
      body: Visibility(
        visible: isLoadComment,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: comments?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    comments![index].postId.toString(),
                  ),
                  Text(
                    comments![index].id.toString(),
                  ),
                  Text(
                    comments![index].name ?? "No name",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    comments![index].email ?? "No email",
                  ),
                  Text(
                    comments![index].body ?? "No body",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
