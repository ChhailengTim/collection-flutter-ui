import 'package:flutter/material.dart';
import 'package:getx_api/tik_profile/model/data_model.dart';

class TikTokProfileScreen extends StatelessWidget {
  const TikTokProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_add),
        ),
        title: const Text("ChhailengTim"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://p16-sign-va.tiktokcdn.com/tos-useast2a-avt-0068-giso/938222db3fcce24cf3b5ea030c9692e2~c5_100x100.jpeg?x-expires=1655625600&x-signature=3jxVV3%2BXLycq9kPcoZUVSmPCIUc%3D",
                        ),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 230,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("@chhailengtim"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DataModel(
                      nubmers: "58",
                      data: "Following",
                    ),
                    DataModel(
                      nubmers: "1255",
                      data: "Followers",
                    ),
                    DataModel(
                      nubmers: "15,4K",
                      data: "Likes",
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                ),
                child: const Center(
                  child: Text(
                    "Edit profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
