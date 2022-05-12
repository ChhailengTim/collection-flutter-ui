import 'package:flutter/material.dart';

class ScrollViews extends StatelessWidget {
  const ScrollViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(
                "https://preview.redd.it/yujj3qz48wr61.jpg?auto=webp&s=79f688e64753e80a8c3ac2ab6e6e8205b9f60833"),
            Image.network(
                "https://preview.redd.it/yujj3qz48wr61.jpg?auto=webp&s=79f688e64753e80a8c3ac2ab6e6e8205b9f60833"),
            Image.network(
                "https://preview.redd.it/yujj3qz48wr61.jpg?auto=webp&s=79f688e64753e80a8c3ac2ab6e6e8205b9f60833"),
            Image.network(
                "https://preview.redd.it/yujj3qz48wr61.jpg?auto=webp&s=79f688e64753e80a8c3ac2ab6e6e8205b9f60833"),
            Image.network(
                "https://preview.redd.it/yujj3qz48wr61.jpg?auto=webp&s=79f688e64753e80a8c3ac2ab6e6e8205b9f60833"),
          ],
        ),
      ),
    );
  }
}
