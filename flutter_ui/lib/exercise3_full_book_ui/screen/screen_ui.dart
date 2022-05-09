import 'package:flutter/material.dart';
import 'package:flutter_ui/exercise3_full_book_ui/widgets/pop_cart.dart';

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book UI")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New books",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                  ],
                ),
              ),
              Text(
                "New books",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
                    ),
                    PopCard(
                      imageURL:
                          "https://m.media-amazon.com/images/I/51dZ2ODHTEL.jpg",
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
