import 'package:flutter/material.dart';
import 'package:infohub/feature/info_submit/widgets/user_details_mobile_view.dart';
import 'package:infohub/feature/info_submit/widgets/user_details_web_view.dart';

class InfoSubmitPage extends StatelessWidget {
  const InfoSubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? UserDetailsMobileView()
            : UserDetailsWebView();
      },
    );
  }
}
