import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_screen/constant.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({
    Key? key,
    this.tabSvg,
    this.onTap,
    this.title,
    this.isActive = false,
  }) : super(key: key);
  final String? tabSvg;
  final String? title;
  final bool isActive;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            tabSvg ?? "assets/icons/calendar.svg",
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title ?? "non",
            style: TextStyle(
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
