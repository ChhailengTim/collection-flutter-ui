import 'package:flutter/material.dart';

class EmailPhoneInput extends StatelessWidget {
  final String? text;
  const EmailPhoneInput({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text ?? 'Password',
        ),
      ),
    );
  }
}
