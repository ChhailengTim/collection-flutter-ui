import 'package:flutter/material.dart';
import 'package:ui_builder/welcome/module/confirm_password.dart';

import '../module/button.dart';
import '../module/password_input.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create new password"),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create new password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Your new password must be different from previous use password."),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const PasswordInput(
            text: "Create new password",
          ),
          const ConfirmPassword(
            text: "Confirm password",
          ),
          Button(
            press: () {},
            text: "Reset Password",
            textColor: Colors.white,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
