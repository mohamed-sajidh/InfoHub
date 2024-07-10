import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infohub/feature/info_block/info_block_controller.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final InfoBlockController controller = Get.put(InfoBlockController());
    return Card(
      color: const Color.fromARGB(255, 36, 77, 113),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            controller.profiles[index].name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            controller.profiles[index].number,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            controller.profiles[index].date,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
