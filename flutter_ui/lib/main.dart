import 'package:flutter/material.dart';

import '2_login_screen/screen/front_screen.dart';
import '2_login_screen/screen/login_screen.dart';
import '2_login_screen/screen/signup_screen.dart';
import 'travel_ui/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
