import 'package:flutter/material.dart';
import 'package:ui_builder/api_album/controller/http_album.dart';
import 'package:ui_builder/api_album/module/album.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  List<Album>? album;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getAlbums();
  }

  getAlbums() async {
    album = await HttpAlbum().getAlbum();
    if (album != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album API"),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: album?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        album![index].id.toString(),
                      ),
                      Text(
                        album![index].userId.toString(),
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    album![index].title ?? "",
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
