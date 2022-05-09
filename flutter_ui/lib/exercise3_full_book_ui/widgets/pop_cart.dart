import 'package:flutter/material.dart';

class PopCard extends StatelessWidget {
  final String? imageURL;
  const PopCard({Key? key, this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageURL ?? ""),
        ),
      ),
    );
  }
}
