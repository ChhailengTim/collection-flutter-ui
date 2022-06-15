import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/photos_api/controller/photo_controller.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  final PhotoController photoController = Get.put(PhotoController());
  @override
  void initState() {
    photoController.getListPhoto();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx API photos"),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: photoController.listPhoto.length,
            itemBuilder: (context, index) {
              return Hero(
                tag: "thumbnail",
                child: Image.network(
                  "${photoController.listPhoto[index].thumbnailUrl}",
                  fit: BoxFit.contain,
                ),
              );
            }),
      ),
    );
  }
}
