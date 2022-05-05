import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  final String? imageURL;
  final String? title;
  final String? price;
  const Custom_Card({Key? key, this.imageURL, this.price, this.title})
      : super(key: key);

  Widget priceLable(String price) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 1),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageURL ?? ""),
        ),
      ),
    );
    const SizedBox(
      height: 5,
    );
  }
}
