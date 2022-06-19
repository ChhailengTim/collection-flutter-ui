import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:getx_api/deatail_screen/screen/detail_screen.dart';

class CustomDetailScreen extends StatelessWidget {
  const CustomDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const DetialScreen(),
          Stack(
            children: [
              SizedBox(
                height: 300,
                child: Image.network(
                  "https://cdn.dribbble.com/users/228053/screenshots/3086637/boba.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 200,
                //left: 60,
                width: 400,
                height: 100,
                child: ClipPath(
                  clipper: OvalTopBorderClipper(),
                  child: Container(
                    //height: 300,
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Text(
                          "Ice Late",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.pink,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
