import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infohub/feature/info_submit/info_submit_controller.dart';
import 'package:infohub/feature/info_submit/widgets/success_popup.dart';
import 'package:http/http.dart' as http;

class UserDetailsMobileView extends StatefulWidget {
  UserDetailsMobileView({super.key});
  final anFormKey = GlobalKey<FormState>();

  @override
  State<UserDetailsMobileView> createState() => _UserDetailsMobileViewState();
}

class _UserDetailsMobileViewState extends State<UserDetailsMobileView> {
  final anFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Scaffold(
      body: Container(
        width: width * 1,
        height: height * 1,
        color: const Color.fromARGB(255, 36, 77, 113),
        child: Center(
          child: Container(
            width: width * 0.85,
            height: height * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: anFormKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.040,
                    ),
                    const DefaultTextStyle(
                      style: TextStyle(
                        color: Color.fromARGB(255, 36, 77, 113),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      child: Text("Please Enter the Details"),
                    ),
                    SizedBox(
                      height: height * 0.090,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
                        controller: _nameController,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'required';
                        //   }
                        //   return null;
                        // },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color(0x40D9D9D9),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 77, 113),
                              width: 0.5,
                            ),
                          ),
                          labelText: 'Enter the Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
                        controller: _numberController,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'required';
                        //   }
                        //   return null;
                        // },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color(0x40D9D9D9),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 77, 113),
                              width: 0.5,
                            ),
                          ),
                          labelText: 'Enter the Number',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
                        controller: _dateController,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'required';
                        //   }
                        //   return null;
                        // },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color(0x40D9D9D9),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 77, 113),
                              width: 0.5,
                            ),
                          ),
                          labelText: 'Enter the Date',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    InkWell(
                      onTap: () async {
                        final response = await DatabaseService().addUser(
                          date: _dateController.text,
                          name: _nameController.text,
                          number: _numberController.text,
                        );

                        if (response == 'success') {
                          showSuccessPopup(context, height, width);
                          _nameController.clear();
                          _dateController.clear();
                          _numberController.clear();
                        }
                      },
                      child: Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 36, 77, 113),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(
                          child: Text(
                            "Submit",
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
