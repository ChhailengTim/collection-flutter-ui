import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  final String? imageURL;
  const Custom_Card({Key? key, this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: NetworkImage(imageURL ?? ""),
        ),
      ),
    );
  }
}
