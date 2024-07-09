import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> showSuccessPopup(context, height, width) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: SizedBox(
          height: height * 0.08,
          width: width * 0.08,
          child: const Image(
            image: AssetImage('assets/success_img.png'),
          ),
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You have Successfully added the User Details'),
            ],
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: height * 0.07,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 36, 77, 113),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  "Close",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
