import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(firstText, style: Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5.0)),
        Text(secondText, style: Styles.headLineStyle3),
      ],
    );
  }
}
