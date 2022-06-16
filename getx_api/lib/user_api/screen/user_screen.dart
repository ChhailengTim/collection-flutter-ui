import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/user_api/controller/user_controller.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final UserController userController = Get.put(UserController());
  @override
  void initState() {
    userController.getListUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Information"),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: userController.listUsers.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 200,
                      ),
                    ),
                  ),
                  Text("ID:${userController.listUsers[index].id}"),
                  Text("Name:${userController.listUsers[index].name}"),
                  Text("Username:${userController.listUsers[index].username}"),
                  Text("Email:${userController.listUsers[index].email}"),
                  const Text(
                    "Address",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Street:${userController.listUsers[index].address!.street}"),
                  Text(
                      "suite:${userController.listUsers[index].address!.suite}"),
                  Text("city:${userController.listUsers[index].address!.city}"),
                  Text(
                      "zipcode:${userController.listUsers[index].address!.zipcode}"),
                  Text(
                      "lat:${userController.listUsers[index].address!.geo!.lat}"),
                  Text(
                      "lng:${userController.listUsers[index].address!.geo!.lng}"),
                  Text("phone:${userController.listUsers[index].phone}"),
                  Text("website:${userController.listUsers[index].website}"),
                  const Text(
                    "company",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("name:${userController.listUsers[index].company!.name}"),
                  Text(
                      "catchPhrase:${userController.listUsers[index].company!.catchPhrase}"),
                  Text("bs:${userController.listUsers[index].company!.bs}"),
                ],
              );
            }),
      ),
    );
  }
}
