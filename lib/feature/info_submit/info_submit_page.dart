import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoSubmitPage extends StatefulWidget {
  const InfoSubmitPage({super.key});

  @override
  State<InfoSubmitPage> createState() => _InfoSubmitPageState();
}

class _InfoSubmitPageState extends State<InfoSubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 200,
        color: Colors.black,
        child: Center(
            child: ElevatedButton(
          style: ButtonStyle(
           
          ),
          onPressed: () {
            Get.back();
          },
          child: Text('Back button'),
        )),
      ),
    );
  }
}
