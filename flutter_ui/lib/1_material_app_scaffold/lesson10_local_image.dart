import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(
                "https://static.boredpanda.com/blog/wp-content/uploads/2016/09/I-photograph-Fat-Cats-57e151944be9f__880.jpg"),
            Image.asset("image/cat.jpg")
          ],
        ),
      ),
    );
  }
}
