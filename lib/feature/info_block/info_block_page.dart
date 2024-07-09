import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infohub/feature/info_block/widgets/info_card.dart';

class InfoBlockPage extends StatelessWidget {
  const InfoBlockPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int columns = constraints.maxWidth <= 550
                ? 1
                : constraints.maxWidth > 550 && constraints.maxWidth <= 1000
                    ? 2
                    : 4;

            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const InfoCard();
              },
            );
          },
        ),
      ),
    );
  }
}
