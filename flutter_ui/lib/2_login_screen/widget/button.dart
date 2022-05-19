import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        width: double.infinity,
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: const Text(
          "Sign In",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            //color: Colors.white,
            border: Border.all(color: Colors.orange)),
      ),
    );
  }
}
