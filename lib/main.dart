import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:infohub/feature/info_block/info_block_page.dart';
import 'package:infohub/feature/info_submit/info_submit_page.dart';
import 'package:infohub/feature/landing_page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'InfoHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      getPages: [
        GetPage(
          name: '/info-submit',
          page: () => const InfoSubmitPage(),
        ),
        GetPage(
          name: '/info-block',
          page: () => const InfoBlockPage(),
        )
      ],
    );
  }
}
