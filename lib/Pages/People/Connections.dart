
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants/Constants.dart';

class Connections extends StatefulWidget {
  const Connections({super.key});

  @override
  State<Connections> createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Peoples"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0),
              color: primaryColor,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
                    height: 60,
                    width: 60,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/profile_image.jpg',
                      ),
                      maxRadius: 16.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
                        child: const Text(
                          "jone doe started to following you",
                          style: TextStyle(
                              fontSize: 14, color: Color(0Xff434141)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        color: primaryColor,
                        child: ElevatedButton(

                          onPressed: () {
                            // Handle button tap
                          },
                          child: const Text("Follow"),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                    )
                                )
                            )
                        ),
                      ),
                    ],

                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
