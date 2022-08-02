import 'package:flutter/material.dart';

class FruitDetatlNonFetch extends StatelessWidget {
  const FruitDetatlNonFetch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fruits Salad",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                const Text("Corbs"),
                const SizedBox(
                  width: 18,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("8%"),
              ],
            ),
            Row(
              children: [
                const Text("Protein"),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("0.3g"),
              ],
            ),
            Row(
              children: [
                const Text("Fat"),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("9%"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "Calories",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "60",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/images/Healthy_Food-Diet.png",
            height: 200,
          ),
        ),
      ],
    );
  }
}
