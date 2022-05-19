import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Login UI",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.coffee,
                  color: Colors.white,
                ),
                Text(
                  "WELCOME",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            Container(
              child: const Image(
                image: NetworkImage(
                    "https://github.com/fluttermapp/flutter_course_app_2/blob/main/images/welcome.png?raw=true"),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              alignment: Alignment.center,
              child: const Text(
                "Sign In",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                //color: Colors.white,
                border: Border.all(color: Colors.white, width: 3),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                debugPrint("Clicked");
              },
              child: Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                alignment: Alignment.center,
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepOrange),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
