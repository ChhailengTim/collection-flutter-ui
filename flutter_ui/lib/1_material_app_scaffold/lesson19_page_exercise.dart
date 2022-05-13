import 'package:flutter/material.dart';

class PageExercise extends StatelessWidget {
  const PageExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page exercise"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.amber,
              child: const ListTile(
                leading: Icon(
                  Icons.face,
                  size: 30,
                ),
                title: Text("This the face"),
                subtitle: Text("Cartoon face"),
                trailing: Icon(
                  Icons.people,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
