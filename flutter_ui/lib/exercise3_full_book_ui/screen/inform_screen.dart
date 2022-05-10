import 'package:flutter/material.dart';

class InformScreen extends StatelessWidget {
  final String? imageURL, writer, price, about;
  const InformScreen(
      {Key? key, this.imageURL, this.writer, this.price, this.about})
      : super(key: key);

  Widget customBuyButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 70),
        child: Text(
          'Buy Now',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _heigh = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: _heigh,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageURL!),
                ),
              ),
              height: _heigh / 2,
            ),
          ),

          ///
          Positioned(
            bottom: 0,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  height: (_heigh / 2) + 20,
                  width: _width,
                  // alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'The Memories Police',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.bookmark,
                              color: Colors.amber[700],
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'by ${writer ?? 'unknown'}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        // const SizedBox(height: 1),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber[700],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '5.0',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.amber[700], fontSize: 14),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '(1534)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.amber[700], fontSize: 14),
                            ),
                            const Spacer(),
                            Text(
                              price == null ? 'Unavailable' : '\$$price',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'About the book',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          about ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                customBuyButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
