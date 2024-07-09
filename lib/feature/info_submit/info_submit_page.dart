import 'package:flutter/material.dart';
import 'package:infohub/feature/info_submit/widgets/user_details_mobile_view.dart';

class InfoSubmitPage extends StatelessWidget {
  const InfoSubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? UserDetailsMobileView()
            : Column(
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                  )
                ],
              );
      },
    );
  }
}
