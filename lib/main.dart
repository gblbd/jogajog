import 'package:flutter/material.dart';
import 'package:jogajog/Pages/HomePage.dart';
import 'package:jogajog/Pages/Notification/Notification.dart';
import 'package:jogajog/Pages/People/Connections.dart';
import 'package:jogajog/Pages/profile/profile_screen.dart';
import 'package:jogajog/Splash/SplashScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: "/splash", page: ()=> const SplashScreen()),
        GetPage(name: "/home", page: ()=> const MyHomePage()),
        GetPage(name: "/profile", page: ()=> const ProfileScreen()),
        GetPage(name: "/notification", page: ()=> const Notifications()),
        GetPage(name: "/people", page: ()=> const Connections()),
      ],
    );
  }
}

