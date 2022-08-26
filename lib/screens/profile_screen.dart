import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/layout_builder_widget.dart';
import 'package:booking/widgets/ticket_screen_column_layout_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20.0), vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86.0),
                width: AppLayout.getHeight(86.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(2.0)),
                  Text(
                    "New York",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(10.0)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100.0)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3.0), vertical: AppLayout.getHeight(3.0)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15.0),
                        ),
                        Gap(AppLayout.getWidth(5.0)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5.0)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () => print("You are tapped"),
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8.0)),
          Divider(color: Colors.grey.shade300, thickness: AppLayout.getHeight(2.0)),
          Gap(AppLayout.getHeight(8.0)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18.0, color: const Color(0xFF264CD2)),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25.0), vertical: AppLayout.getHeight(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27.0),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've got a new award", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                        Text(
                          "You've 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25.0)),
          Text("Accumulated miles", style: Styles.headLineStyle2),
          Gap(AppLayout.getHeight(15.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.0), vertical: AppLayout.getWidth(10.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0)),
              color: Styles.bgColor,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10.0,
                  spreadRadius: 10.0,
                  color: Color(0xFFDDDDDD),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.0),
                    ),
                    // const Spacer(),
                    Text(
                      " 26 Aug 2022",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.0),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(4.0)),
                Divider(color: Colors.grey.shade300, thickness: AppLayout.getHeight(2.0)),
                Gap(AppLayout.getHeight(4.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "McDonal's", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(sections: 12, isColor: false),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "52 340 ", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Adi", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15.0)),
          InkWell(
            onTap: () => print("You are tapped"),
            child: Center(
              child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
