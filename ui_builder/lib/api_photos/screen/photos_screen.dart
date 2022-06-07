import 'package:flutter/material.dart';
import 'package:ui_builder/api_photos/controller/http_photos.dart';
import 'package:ui_builder/api_photos/module/photos.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({Key? key}) : super(key: key);

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  List<PhotosApi>? photosapi;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getPhotos();
  }

  getPhotos() async {
    photosapi = await HttpPhotos().getPhotos();
    if (photosapi != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos API"),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: photosapi?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    photosapi![index].albumId.toString(),
                  ),
                  Image(
                    image: NetworkImage(photosapi![index].url!),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Image(
                    image: NetworkImage(photosapi![index].thumbnailUrl!),
                  ),
                  Text(
                    photosapi![index].id.toString(),
                  ),
                  Text(photosapi![index].title ?? "title"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
