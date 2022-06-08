import 'package:flutter/material.dart';
import 'package:ui_builder/api_user/controller/http_user.dart';
import 'package:ui_builder/api_user/model/user.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User>? users;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    users = await HttpUser().getUser();
    if (users != null) {
      isLoading = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User API"),
      ),
      body: Visibility(
        visible: isLoading,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: users?.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.person,
                  size: 200,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("ID: "),
                        Text(users![index].id.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Name: "),
                        Text(users![index].name!),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("User: "),
                        Text(users![index].username!),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Email: "),
                        Text(users![index].email!),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_city,
                        ),
                        Text("Address"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Street: "),
                        Text(users![index].address!.street.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Suit: "),
                        Text(users![index].address!.suite.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("City: "),
                        Text(users![index].address!.city.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Zipcode: "),
                        Text(users![index].address!.zipcode.toString()),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.map),
                        Text("Geo"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("lat: "),
                        Text(users![index].address!.geo!.lat.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("lng: "),
                        Text(users![index].address!.geo!.lng.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Phone: "),
                        Text(users![index].phone.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Website: "),
                        Text(users![index].website.toString()),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.apartment),
                        Text("Company"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Website: "),
                        Text(users![index].company!.name!),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("CatchPrase: "),
                        Text(users![index].company!.catchPhrase!),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Bs: "),
                        Text(users![index].company!.bs!),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
