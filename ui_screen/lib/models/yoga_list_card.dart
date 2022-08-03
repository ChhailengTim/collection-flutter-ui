import 'package:flutter/material.dart';
import 'package:ui_screen/constant.dart';

class YogaListCard extends StatelessWidget {
  const YogaListCard({
    Key? key,
    this.image,
    this.title,
  }) : super(key: key);
  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Stack(
            children: [
              Container(
                height: 200,
                width: constraints.maxWidth / 2 - 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 23,
                      spreadRadius: -13,
                      color: kShadowColor,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image ?? "assets/images/QQ.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title ?? "SEATED YOGA",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
