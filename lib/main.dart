import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:infohub/feature/info_block/info_block_page.dart';
import 'package:infohub/feature/info_submit/info_submit_page.dart';
import 'package:infohub/feature/info_table/info_table_page.dart';
import 'package:infohub/feature/landing_page/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBA8JZOulcQhEvTC-68h6IglRhmTSV1_F4",
      appId: "1:217403791441:web:987b56ad07cc0da28e4070",
      messagingSenderId: "217403791441",
      projectId: "infohub-f3672",
    ),
  );
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
          name: '/info-table',
          page: () => const InfoTablePage(),
        ),
        GetPage(
          name: '/info-block',
          page: () => const InfoBlockPage(),
        )
      ],
    );
  }
}
