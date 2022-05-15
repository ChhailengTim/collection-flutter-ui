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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                const Center(
                  child: Image(
                    image: NetworkImage(
                        "https://github.com/fluttermapp/flutter_course_app_2/blob/main/images/welcome.png?raw=true"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Sign in");
                  },
                  child: Container(
                    child: Text(
                      "Sign in",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3.0),
                        bottomRight: Radius.circular(3.0),
                        bottomLeft: Radius.circular(3.0),
                        topLeft: Radius.circular(3.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Register");
                  },
                  child: Container(
                    child: Text(
                      "Register",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3.0),
                        bottomRight: Radius.circular(3.0),
                        bottomLeft: Radius.circular(3.0),
                        topLeft: Radius.circular(3.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
