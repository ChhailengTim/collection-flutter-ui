import 'package:flutter/material.dart';
import 'package:ui_screen/models/activity_card.dart';
import 'package:ui_screen/models/bottomnav_bar.dart';

class KegelDetail extends StatelessWidget {
  const KegelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "ACTIVITY",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.blue,
                        ),
                  ),
                  const Spacer(),
                  const Text("Show All"),
                ],
              ),
              const ActivityCard(
                image: "assets/images/run.png",
                title: "Running",
                subtitle: "5km hard running",
                time: "6:00 AM",
              ),
              const ActivityCard(
                color: Color.fromARGB(255, 109, 248, 248),
                image: "assets/images/cycling.png",
                title: "Cycling",
                subtitle: "15km cycle ridding",
                time: "10:00 AM",
              ),
              Row(
                children: [
                  Text(
                    "MEAL",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.blue,
                        ),
                  ),
                  const Spacer(),
                  const Text("Show All"),
                ],
              ),
              const ActivityCard(
                color: Color.fromARGB(255, 238, 151, 247),
                image: "assets/images/coffee.png",
                title: "Breakfast",
                subtitle: "Tea, Bread, idli, Uttapan",
                time: "9:00 AM",
              ),
              const ActivityCard(
                color: Color.fromARGB(255, 109, 248, 248),
                image: "assets/images/rice.png",
                title: "Lunch",
                subtitle: "2 Sabji, Roti, Dal, Rice, Buttermilk",
                time: "12:00 PM",
              ),
              const ActivityCard(
                color: Color.fromARGB(255, 109, 248, 248),
                image: "assets/images/baguette.png",
                title: "Dinner",
                subtitle: "2 Sabji, Roti, Dal, Rice, Buttermilk",
                time: "8:00 PM",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
