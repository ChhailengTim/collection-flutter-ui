import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://s1.favim.com/orig/150127/cat-cute-eyes-fat-Favim.com-2422620.jpg")
          ],
        ),
      ),
    );
  }
}
