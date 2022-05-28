import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.text,
    this.press,
    this.textColor = Colors.white,
    this.color = Colors.white,
  }) : super(key: key);

  final String? text;
  final Function()? press;
  final Color? color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: size.width * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          primary: color,
          textStyle: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: press,
        child: Text(
          text ?? "",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
