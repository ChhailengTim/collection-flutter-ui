import 'package:flutter/material.dart';
import 'package:ui_builder/welcome/module/button.dart';
import 'package:ui_builder/welcome/module/email_phone_input.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Password"),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reset password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Enter the Email or Phone associated with your account and we'll send a code instruction to reset your password."),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const EmailPhoneInput(
            text: "Email or Phone",
          ),
          Button(
            press: () {},
            text: "Get code",
            textColor: Colors.white,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
