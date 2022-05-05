import 'package:flutter/material.dart';
import 'package:flutter_ui/exercise2_redo_book_ui/widgets/custom_cart.dart';

class HomeScreenRE extends StatelessWidget {
  const HomeScreenRE({Key? key}) : super(key: key);

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
              "New Books",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                ],
              ),
            ),
            Text(
              "For You",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                  Custom_Card(
                    imageURL:
                        "https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
