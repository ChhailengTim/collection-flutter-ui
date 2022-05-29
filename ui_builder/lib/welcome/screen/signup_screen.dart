import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:ui_builder/welcome/module/button.dart';
import 'package:ui_builder/welcome/module/email_phone_input.dart';
import 'package:ui_builder/welcome/module/password_input.dart';
import 'package:ui_builder/welcome/module/user_name.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Icon(
              Icons.sign_language,
              size: 150,
            ),
            const SizedBox(
              height: 5,
            ),
            const UserName(
              text: "User name",
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
              text: "Register",
              press: () {},
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Twitter,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
