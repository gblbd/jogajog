import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jogajog/Pages/CreatePost.dart';
import 'package:jogajog/Pages/Notification/Notification.dart';
import 'package:jogajog/Pages/People/Connections.dart';

import '../../Constants/Constants.dart';
import '../HomePage.dart';
import '../Widges/custom_button.dart';
import '../profile/profile_screen.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final _pages = [
    const MyHomePage(),
    const Connections(),
    const Notifications(),
    const ProfileScreen(),
  ];

  void _changePageTo(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      floatingActionButton: CustomButton(
              child: SvgPicture.asset('assets/images/plus.svg'),
              onTap: () {
                Get.to(() => const CreatePost());
              },
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
              height: 80.0,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                    offset: const Offset(0, 4),
                    color: kBlack.withOpacity(0.15),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => _changePageTo(0),
                    child: SvgPicture.asset(
                      'assets/images/home.svg',
                      color: _selectedIndex == 0 ? kSelectedTabColor : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _changePageTo(1),
                    child: SvgPicture.asset(
                      'assets/images/message.svg',
                      color: _selectedIndex == 1 ? kSelectedTabColor : null,
                    ),
                  ),
                  const SizedBox(),
                  GestureDetector(
                    onTap: () => _changePageTo(2),
                    child: SvgPicture.asset(
                      'assets/images/favorite_border.svg',
                      color: _selectedIndex == 2 ? kSelectedTabColor : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _changePageTo(3),
                    child: SvgPicture.asset(
                      'assets/images/profile.svg',
                      color: _selectedIndex == 3 ? kSelectedTabColor : null,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
