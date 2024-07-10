import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infohub/feature/info_table/info_table_controller.dart';

class InfoTablePage extends StatelessWidget {
  const InfoTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width > 600 ? 35.0 : 15.0;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'User Details',
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
      body: GetBuilder(
        init: InfoTableController(),
        builder: (controller) {
          return Obx(
            () => controller.loading.isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: EdgeInsets.all(paddingValue),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: DataTable(
                          headingRowColor: WidgetStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 36, 77, 113),
                          ),
                          columns: const [
                            DataColumn(
                              label: Text(
                                "Username",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Phone Number",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Date",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                          rows: controller.profiles
                              .map(
                                (user) => DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text(user.name),
                                    ),
                                    DataCell(
                                      Text(user.number),
                                    ),
                                    DataCell(
                                      Text(user.date),
                                    )
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
