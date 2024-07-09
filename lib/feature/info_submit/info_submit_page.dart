import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infohub/feature/info_submit/widgets/user_details_mobile_view.dart';
import 'package:infohub/feature/info_submit/widgets/user_details_web_view.dart';

class InfoSubmitPage extends StatelessWidget {
  const InfoSubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add User',
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 36, 77, 113),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 36, 77, 113),
            size: 25.0,
          ),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? UserDetailsMobileView()
              : UserDetailsWebView();
        },
      ),
    );
  }
}
