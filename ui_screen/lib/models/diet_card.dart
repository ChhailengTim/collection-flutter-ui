import 'package:flutter/material.dart';
import 'package:ui_screen/constant.dart';

class DietCard extends StatelessWidget {
  const DietCard({
    Key? key,
    this.image,
    this.title,
    this.qty,
  }) : super(key: key);
  final String? image;
  final String? title;
  final String? qty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white70,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kBlueColor,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image ?? ""),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "non",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.pink,
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                qty ?? "non",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
