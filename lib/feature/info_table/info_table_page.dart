import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoTablePage extends StatefulWidget {
  const InfoTablePage({super.key});

  @override
  State<InfoTablePage> createState() => _InfoTablePageState();
}

class _InfoTablePageState extends State<InfoTablePage> {
  List<int> users = [
    10,
    20,
    50,
    100,
    150,
    200,
    250,
    300,
    350,
    400,
    450,
    500,
    550,
    600,
    650,
    700,
    750,
    800
  ];

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
      body: Padding(
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
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
              rows: users
                  .map(
                    (user) => const DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text('haiii'),
                        ),
                        DataCell(
                          Text('haiii'),
                        ),
                        DataCell(
                          Text('haiii'),
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
  }
}
