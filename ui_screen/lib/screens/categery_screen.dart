import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_screen/constant.dart';

class CategeryCard extends StatelessWidget {
  const CategeryCard({
    Key? key,
    this.svgPic,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String? svgPic;
  final String? title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(svgPic ?? ""),
                  const Spacer(),
                  Text(
                    title ?? "Non title",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
