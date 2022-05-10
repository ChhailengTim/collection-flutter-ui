import 'package:flutter/material.dart';
import 'package:flutter_ui/exercise3_full_book_ui/screen/inform_screen.dart';

class PopCard extends StatelessWidget {
  final String? imageURL;
  final String? price;
  final String? title;
  const PopCard({Key? key, this.imageURL, this.price, this.title})
      : super(key: key);

  // ignore: non_constant_identifier_names
  Widget LabelPrice(String price) {
    return Text(price);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const InformScreen(
                  imageURL:
                      "https://m.media-amazon.com/images/M/MV5BMjA5YTFlNzYtZmU5Ni00Y2Y2LWFmMTktNGFlZjE0MWIwMDJmXkEyXkFqcGdeQXVyMjMwODE4ODI@._V1_.jpg",
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageURL ?? ""),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title ?? "no title",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 5,
        ),
        LabelPrice(price ?? "free"),
      ],
    );
  }
}
