import 'package:flutter/material.dart';
import 'package:jogajog/Constants/Constants.dart';
import 'package:jogajog/Pages/nav/nav.dart';


import '../Pages/HomePage.dart';
import '../Utils/Tools.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late final AnimationController _animationController;

  late final Animation<double> _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

  @override
  void initState() {

    super.initState();
    //navigateToHome();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController.forward(); // Start the animation in the forward direction
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation has completed, navigate to the next screen
        navigateToHome();
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            'assets/images/logo.png',
            width: Tools.getSize(0.40, context),
            height: Tools.getSize(0.40, context),
            // color: Variables.primaryColor

          ),
        )
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void navigateToHome() async{

    await Future.delayed(const Duration(seconds: 2), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Nav()));

  }
}
