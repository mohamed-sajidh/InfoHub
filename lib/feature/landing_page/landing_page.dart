import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var sw = screeenSize.width;
    return Scaffold(
      appBar: AdaptiveNavBar(
        screenWidth: sw,
        title: const Text("Adaptive NavBar"),
        navBarItems: [
          NavBarItem(
            text: 'Sub Menu 1',
            onTap: () => Get.toNamed("/info-submit"),
          ),
          NavBarItem(text: 'Sub Menu 2'),
          NavBarItem(
            text: 'Sub Menu 3',
            onTap: () => Get.toNamed("/info-block"),
          ),
        ],
      ),
    );
  }
}
