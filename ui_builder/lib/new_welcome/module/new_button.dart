import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  const NewButton(
      {Key? key,
      this.text,
      this.press,
      required this.textColor,
      this.primaryColor})
      : super(key: key);

  final String? text;
  final Function()? press;
  final Color textColor;
  final Color? primaryColor;

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        // textStyle: TextStyle(
        //   color: primaryColor,
        // ),
      ),
      child: Text(
        text ?? "button",
        style: TextStyle(
          color: textColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: newElevatedButton(),
        ),
      ),
    );
  }
}
