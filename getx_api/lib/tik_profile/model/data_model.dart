import 'package:flutter/material.dart';

class DataModel extends StatelessWidget {
  DataModel({
    Key? key,
    this.nubmers,
    this.data,
  }) : super(key: key);
  String? nubmers;
  String? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nubmers ?? "No number",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          data ?? "No data",
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
