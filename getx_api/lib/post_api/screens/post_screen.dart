import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/post_api/controller/post_controller.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final Virak virak = Get.put(Virak());
  @override
  void initState() {
    virak.onFetchPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx API"),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: virak.listpost.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(
                    "${virak.listpost[index].title}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "${virak.listpost[index].id}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
