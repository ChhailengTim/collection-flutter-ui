import 'package:flutter/material.dart';
import 'package:ui_builder/welcome/module/button.dart';
import 'package:ui_builder/welcome/module/confirm_code.dart';

import 'create_new_password_screen.dart';

class ConfirmCodeScreen extends StatelessWidget {
  const ConfirmCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm code"),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Check your code",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "We have sent a password recover instructions to your Email or Phone."),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ConfirmCode(
            text: "Enter code",
          ),
          Button(
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateNewPassword()));
            },
            text: "Confirm code",
            textColor: Colors.white,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
