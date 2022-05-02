import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book"),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Column(
      //     //crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // const Text(
      //       //   "New Book",
      //       //   style: TextStyle(
      //       //     fontWeight: FontWeight.bold,
      //       //     fontSize: 20,
      //       //   ),
      //       // ),
      //       SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Column(
      //           children: [
      //             bookCard(),
      //             bookCard(),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: bookCard(),
      ),
    );
  }
}

Widget bookCard({String? imageUrl, BookTitle}) {
  return Container(
    width: 100,
    margin: const EdgeInsets.only(right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            //image: DecorationImage(
            //image: NetworkImage(
            //"https://korean-drama-list.com/wp-content/uploads/2021/07/xcvxcvxv.png"),
            //),
            color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
