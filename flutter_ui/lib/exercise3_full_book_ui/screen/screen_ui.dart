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
              const Text("New books"),
              Row(
                children: const [
                  PopCard(),
                ],
              ),
              const Text("New books"),
              Row(
                children: const [
                  PopCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
