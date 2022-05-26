import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PushScreen extends StatefulWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  State<PushScreen> createState() => _PushScreenState();
}

class _PushScreenState extends State<PushScreen> {
  bool _lights = true;

  Widget labelSwitch({String? lable}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: MergeSemantics(
        child: ListTile(
          title: Text(lable ?? ""),
          trailing: CupertinoSwitch(
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                _lights = value;
              });
            },
          ),
          onTap: () {
            setState(() {
              _lights = !_lights;
            });
          },
        ),
      ),
    );
  }

  Widget customLabel({String? text}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(text ?? ""),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Notifications"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              child: Text("FAVORITES"),
            ),
            labelSwitch(lable: "Favorites List"),
            customLabel(text: "Types of Notifications"),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 25),
              child: Text("SAVED SEARCHES"),
            ),
            labelSwitch(lable: "Seattle (1)"),
            labelSwitch(lable: "Seattle"),
            customLabel(text: "Types of Notifications"),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 25),
              child: Text("RECOMMENDATIONS"),
            ),
            labelSwitch(lable: "Recommended for You"),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 25),
              child: Text("TOURS"),
            ),
            labelSwitch(lable: "Scheduled Tour Reminders"),
          ],
        ),
      ),
    );
  }
}
