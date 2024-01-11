import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jogajog/Constants/Constants.dart';
import 'package:jogajog/Pages/nav/nav.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: const Icon(CupertinoIcons.xmark),
                  onTap: () {
                    Get.to(() => const Nav());
                  },
                ),
                const Text(
                  "Create Post",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kCaption, fontSize: 18),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(primaryColor)),
                    onPressed: () {},
                    child: const Text(
                      "POST",
                      style: TextStyle(color: kCaption),
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind ?',
                    ),
                    maxLines: null,
                  ),
                ),
                // Add additional widgets or content here
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: primaryColor,
            child: ElevatedButton(
              onPressed: () {
                // Handle button tap
              },
              child: const Text("select media"),
            ),
          ),
        ],
      ),
    );
  }
}