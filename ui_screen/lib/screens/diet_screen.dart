import 'package:flutter/material.dart';
import 'package:ui_screen/constant.dart';
import 'package:ui_screen/models/diet_card.dart';
import 'package:ui_screen/models/non_fetch_fruite_detial.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * .40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -20,
                          color: kBlueColor,
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FruitDetatlNonFetch(),
                          Text(
                            "Salad",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.pink,
                                  fontSize: 25,
                                ),
                          ),
                          Text(
                            "Fruites Salad Are Ideal For Weight Loss At This Stage.",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontSize: 15,
                                ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    height: size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -20,
                          color: kBlueColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: const [
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                        DietCard(
                          image: "assets/images/strawberry.png",
                          title: "Strawberries",
                          qty: "1 Cup",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
