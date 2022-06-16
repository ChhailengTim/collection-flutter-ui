import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/photos_api/controller/photo_controller.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
        title: const Text("Detail Screen"),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: photoController.listPhoto.length,
            itemBuilder: (context, index) {
              return Card(
                child: Hero(
                  tag: index,
                  child: Image.network(
                    "${photoController.listPhoto[index].thumbnailUrl}",
                    //height: 100,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
