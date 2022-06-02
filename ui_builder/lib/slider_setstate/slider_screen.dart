import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double range = 1;
  double start = 1;
  double stop = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider with setState"),
      ),
      body: Column(
        children: [
          Text(
            range.round().toString(),
          ),
          Slider(
            value: range,
            min: 0,
            max: 100,
            divisions: 100,
            onChanged: (double v) {
              setState(() {
                range = v;
              });
            },
            onChangeStart: (double v) {
              setState(() {
                range = v;
              });
            },
            onChangeEnd: (double v) {
              setState(() {
                range = v;
              });
            },
          ),
        ],
      ),
    );
  }
}
