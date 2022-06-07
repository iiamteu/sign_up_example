// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

import '../onboarding/onboarding_screen.dart';

class LauchingScreen extends StatefulWidget {
  const LauchingScreen({Key key}) : super(key: key);

  @override
  State<LauchingScreen> createState() => LauchingScreenState();
}

class LauchingScreenState extends State<LauchingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000))
        .then((value) => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const OnBoardingScreen(),
              ),
              (route) => false,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Center(
          child: Text(
            'SHOESLY',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
