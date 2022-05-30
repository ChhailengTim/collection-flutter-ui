import 'package:flutter/material.dart';

class TextEmail extends StatelessWidget {
  const TextEmail({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? "Email or Phone",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: TextField(
            obscureText: false,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              fillColor: Colors.blue,
              filled: true,
              prefixIcon: const Icon(Icons.email),
              hintText: "Email or Phone",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
