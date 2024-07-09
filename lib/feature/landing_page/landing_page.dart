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
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/background_img.png'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 50,
            right: 50,
            child: AdaptiveNavBar(
              screenWidth: sw,
              title: const Text(
                "INFOHUB",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 36, 77, 113),
                  fontWeight: FontWeight.w600,
                ),
              ),
              navBarItems: [
                NavBarItem(
                  text: 'Connect',
                  onTap: () => Get.toNamed("/info-submit"),
                ),
                NavBarItem(
                  text: 'Records',
                  onTap: () => Get.toNamed("/info-table"),
                ),
                NavBarItem(
                  text: 'Block',
                  onTap: () => Get.toNamed("/info-block"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}