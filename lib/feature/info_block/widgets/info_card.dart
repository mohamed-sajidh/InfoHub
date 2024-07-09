import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(255, 36, 77, 113),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Ajay M',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '9658574100',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '26-09-2023',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      // child: Center(
      //   child: Text(
      //     'Item 1',
      //     style: TextStyle(color: Colors.white, fontSize: 16),
      //   ),
      // ),
    );
  }
}
