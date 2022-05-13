import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView and ListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.pink,
              child: const ListTile(
                leading: Icon(Icons.people),
                subtitle: Text("This the real human"),
                title: Text("People live for life"),
                trailing: Icon(Icons.flaky),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
