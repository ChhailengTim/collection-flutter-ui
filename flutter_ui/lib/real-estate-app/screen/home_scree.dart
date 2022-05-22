import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: SearchBar(),
            );
          },
          icon: const Icon(Icons.search),
        ),
        title: const Text("Map Location"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: ("Find Homes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feed,
              color: Colors.black,
            ),
            label: ("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}

class SearchBar extends SearchDelegate {
  List<String> searchTerms = [
    'City',
    'Address',
    'School',
    'Agent',
    'ZIP',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.search),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> mathQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        mathQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: mathQuery.length,
        itemBuilder: (context, index) {
          var result = mathQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> mathQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        mathQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: mathQuery.length,
        itemBuilder: (context, index) {
          var result = mathQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
