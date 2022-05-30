import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:ui_builder/new_welcome/controller/tick_box.dart';

import '../../welcome/screen/signup_screen.dart';
import '../module/field_password.dart';
import '../module/new_button.dart';
import '../module/field_email.dart';

class NewLoginScreen extends StatelessWidget {
  const NewLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TickBox tickBox = Get.put(TickBox());
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: const Text("WELCOME"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextEmail(),
                const SizedBox(
                  height: 12,
                ),
                const FieldPassword(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: tickBox.tick.value,
                        onChanged: (value) {
                          tickBox.tick.value = !tickBox.tick.value;
                        },
                      ),
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                NewButton(
                  text: "Log in",
                  press: () {},
                  textColor: Colors.black,
                  primaryColor: Colors.white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Sign in with",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton.mini(
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.twitter,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
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
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
