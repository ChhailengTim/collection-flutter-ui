import 'package:flutter/material.dart';
import 'package:ui_screen/models/tab_bars.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabBarItems(
            tabSvg: "assets/icons/calendar.svg",
            title: "Today",
            onTap: () {},
          ),
          TabBarItems(
            tabSvg: "assets/icons/gym.svg",
            title: "Gym",
            isActive: true,
            onTap: () {},
          ),
          TabBarItems(
            tabSvg: "assets/icons/Settings.svg",
            title: "Settings",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
