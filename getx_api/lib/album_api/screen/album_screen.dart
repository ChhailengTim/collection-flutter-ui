import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/album_api/controller/album_controller.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  final AlbumController albumController = Get.put(AlbumController());
  @override
  void initState() {
    albumController.getListAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx API album"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: albumController.listAlbum.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.pink,
              child: Center(
                child: Column(
                  children: [
                    Text("${albumController.listAlbum[index].userId}"),
                    Text("${albumController.listAlbum[index].id}"),
                    Text("${albumController.listAlbum[index].title}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
