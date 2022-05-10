import 'package:flutter/material.dart';

class Window extends StatelessWidget {
  const Window({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("More Container"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // height: 50,
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "123",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    // height: 50,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "123",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      // height: 50,
                      // width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "123",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 2,
              // width: 200,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "123",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // height: 50,
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "123",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
