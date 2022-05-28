import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        hintText: hintText ?? "",
        border: InputBorder.none,
      ),
    );
  }
}
