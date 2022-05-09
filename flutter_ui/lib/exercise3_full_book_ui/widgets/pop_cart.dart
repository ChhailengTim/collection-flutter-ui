import 'package:flutter/material.dart';

class PopCard extends StatelessWidget {
  const PopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg"),
        ),
      ),
    );
  }
}
