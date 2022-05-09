import 'package:flutter/material.dart';

// ignore: camel_case_types
class Custom_Card extends StatelessWidget {
  final String? imageURL;
  final String? title;
  final String? price;
  final GestureTapCallback? onTap;
  const Custom_Card(
      {Key? key, this.imageURL, this.price, this.title, this.onTap})
      : super(key: key);

  Widget priceLabel(BuildContext context, String price) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        price,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageURL ?? ""),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title ?? "No Title",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
        ),
        priceLabel(context, price ?? "Free"),
      ],
    );
  }
}
