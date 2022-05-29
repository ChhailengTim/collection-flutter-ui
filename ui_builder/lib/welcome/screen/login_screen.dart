import 'package:flutter/material.dart';
import 'package:ui_builder/welcome/module/button.dart';
import 'package:ui_builder/welcome/module/email_phone_input.dart';
import 'package:ui_builder/welcome/module/password_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Icon(
                Icons.logo_dev,
                size: 150,
              ),
              const EmailPhoneInput(
                text: "Email or Phone",
              ),
              const SizedBox(
                height: 5,
              ),
              const PasswordInput(
                text: "Password",
              ),
              Button(
                text: "Log in",
                press: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
              RichText(
                textScaleFactor: 1,
                text: const TextSpan(
                  text: "Forgot your password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
