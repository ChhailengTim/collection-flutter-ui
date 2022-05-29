import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text ?? "username",
        ),
      ),
    );
  }
}
