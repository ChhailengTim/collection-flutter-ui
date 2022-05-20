import 'package:flutter/material.dart';

class HomePageTravel extends StatelessWidget {
  const HomePageTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
          "https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/09/travel-logo-design.jpg"),
    );
  }
}
