import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jogajog/Constants/Constants.dart';

class Notifications extends StatefulWidget {
  const   Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Notification"),
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
                    child: SvgPicture.asset(
                      'assets/images/ic_notification2.svg',
                      height: 45,
                      width: 45,
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
                        margin: const EdgeInsets.only(left: 10.0, bottom: 5),
                        child: const Text(
                          "December 2023",
                          style: TextStyle(
                              fontSize: 14, color: Color(0Xff00A18A)
                          ),
                          textAlign: TextAlign.center,
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
