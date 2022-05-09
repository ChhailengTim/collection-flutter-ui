import 'package:flutter/material.dart';

class InforScreen extends StatelessWidget {
  final String? imageURL;
  const InforScreen({Key? key, this.imageURL}) : super(key: key);

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
          Positioned(
            bottom: 0,
            child: Stack(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
