import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.color,
  }) : super(key: key);
  final Color? color;
  final String? image;
  final String? title;
  final String? subtitle;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color ?? Colors.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              image ?? "assets/images/run.png",
              height: 30,
              fit: BoxFit.cover,
            ),
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
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              subtitle ?? "non",
            ),
          ],
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: Text(time ?? "non"),
        ),
      ],
    );
  }
}
