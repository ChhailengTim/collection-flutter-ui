import 'package:flutter/material.dart';
import 'package:flutter_ui/exercise1_book_ui/screen/screen_detail.dart';
import 'package:flutter_ui/exercise1_book_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "News Book",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                      },
                      price: "\$20",
                      title: "Cate",
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                    const CustomCard(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                    const CustomCard(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                    const CustomCard(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                    const CustomCard(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                    const CustomCard(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPDT3gJddVjkoCQkI4qs3tt-rUju8QEVrWBlTQ0N6RjgJh_58-nLrRkjWtGCIu5JT12Xw&usqp=CAU",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "For You",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CustomCard(
                      price: "\$20",
                      title: "BTC",
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                    CustomCard(
                      imageUrl:
                          "https://i.pinimg.com/originals/aa/02/78/aa02780bbc7e6c5e2d52d9b0e919fbf6.jpg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
