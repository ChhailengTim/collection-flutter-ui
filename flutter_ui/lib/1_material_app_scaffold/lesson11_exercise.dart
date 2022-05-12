import 'package:flutter/material.dart';

class ImageWork extends StatelessWidget {
  const ImageWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Coding Exercise"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network("https://eskipaper.com/images/cute-fat-cat-1.jpg"),
            Image.asset("image/cat.jpg")
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        child: Icon(
          Icons.home,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
