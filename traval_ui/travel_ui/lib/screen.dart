import 'package:flutter/material.dart';

class HomePageTravel extends StatelessWidget {
  const HomePageTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/09/travel-logo-design.jpg"),
            Text(
              "Travel App",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Stays"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
