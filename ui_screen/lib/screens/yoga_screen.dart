import 'package:flutter/material.dart';
import 'package:ui_screen/models/bottomnav_bar.dart';
import 'package:ui_screen/models/workout_card.dart';
import 'package:ui_screen/models/yoga_card.dart';
import 'package:ui_screen/models/yoga_list_card.dart';

class YogaScreen extends StatelessWidget {
  const YogaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Yoga Workout",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.blue,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      WorkourCard(
                        number: "1",
                        title: "Workout",
                      ),
                      WorkourCard(
                        number: "0.04",
                        title: "Kcal",
                      ),
                      WorkourCard(
                        number: "00:00:19",
                        title: "Duration",
                      ),
                    ],
                  ),
                ),
                Text(
                  "Challengs",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        YogaCard(),
                        SizedBox(
                          width: 15,
                        ),
                        YogaCard(),
                        SizedBox(
                          width: 15,
                        ),
                        YogaCard(),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Yoga",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const Spacer(),
                    const Text("Show all"),
                  ],
                ),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: const [
                    YogaListCard(),
                    YogaListCard(
                      image: "assets/images/body.jpg",
                      title: "BODY",
                    ),
                    YogaListCard(
                      image: "assets/images/back.jpeg",
                      title: "BACK",
                    ),
                    YogaListCard(
                      image: "assets/images/stand.jpg",
                      title: "STAND",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
