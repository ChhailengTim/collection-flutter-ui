import 'package:flutter/material.dart';
import 'package:ui_builder/welcome/module/button.dart';
import 'package:ui_builder/welcome/module/email_phone_input.dart';
import 'package:ui_builder/welcome/module/password_input.dart';
import 'package:ui_builder/welcome/screen/reset_password_screen.dart';
import 'package:ui_builder/welcome/screen/signup_screen.dart';

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPassword()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 215),
                  child: RichText(
                    textScaleFactor: 1,
                    text: const TextSpan(
                      text: "Forgot your password?",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Button(
                text: "Log in",
                press: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textScaleFactor: 1,
                    text: const TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Text(
                      "Create",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
