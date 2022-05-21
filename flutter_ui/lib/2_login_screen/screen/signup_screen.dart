import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Join Redfin",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 25,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 15,
                        ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Sign up!");
                    },
                    child: Text(
                      "Sign up",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(3),
                      //border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(3),
                      //border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  child: const Text(
                    "Join Redfin",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(3),
                    //border: Border.all(color: Colors.black, width: 3),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "By joining you agree to the Redfin Terms of Use and Privacy Policy",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black26,
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
