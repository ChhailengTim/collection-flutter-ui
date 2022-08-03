import 'package:flutter/material.dart';

class YogaCard extends StatelessWidget {
  const YogaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            image: const DecorationImage(
              image: AssetImage("assets/images/yoga.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BEGINNER",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              Text(
                "7 Weeks",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black,
                    ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "10 %",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
