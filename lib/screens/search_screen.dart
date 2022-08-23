import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/double_text_widget.dart';
import 'package:booking/widgets/icon_text_widget.dart';
import 'package:booking/widgets/ticket_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0), vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35.0)),
          ),
          Gap(AppLayout.getHeight(20.0)),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25.0)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20.0)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.5,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18.0)),
                decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(50.0)),
                ),
                child: Center(
                  child: Text(
                    "Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(40.0)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400.0),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15.0), vertical: AppLayout.getWidth(15.0)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(200.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12.0)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance ",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(190.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15.0),
                          horizontal: AppLayout.getWidth(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10.0)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45.0,
                        top: -40.0,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18.0,
                              color: const Color(0xFF189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10.0)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200.0),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15.0), horizontal: AppLayout.getWidth(15.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18.0)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10.0)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30.0),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 40.0),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 30.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
