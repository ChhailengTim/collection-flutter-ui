import 'package:flutter/material.dart';
import 'package:flutter_ui/exercise1_book_ui/screen/screen.dart';
import 'package:flutter_ui/introduction_to_widgets/widget1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: [
            MyApp1(
              title: Text(
                "Hello",
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Hello World!",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
