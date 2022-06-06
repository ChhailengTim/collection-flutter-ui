import 'package:flutter/material.dart';
import 'package:ui_builder/api_post/controller/https.dart';
import 'package:ui_builder/api_post/module/posts.dart';

class PostScren extends StatefulWidget {
  const PostScren({Key? key}) : super(key: key);

  @override
  State<PostScren> createState() => _PostScrenState();
}

class _PostScrenState extends State<PostScren> {
  List<Posts>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = await HttpRequest().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post API"),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: posts!.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.yellow,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts![index].id.toString(),
                      ),
                      Text(
                        posts![index].userId.toString(),
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        posts![index].title ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        posts![index].body ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                      ),
                    ],
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
