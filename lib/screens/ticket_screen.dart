import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/views/ticket_view.dart';
import 'package:booking/widgets/ticket_screen_column_layout_widget.dart';
import 'package:booking/widgets/ticket_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0), vertical: AppLayout.getHeight(20.0)),
            children: [
              Gap(AppLayout.getHeight(40.0)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20.0)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20.0)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(16.0)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16.0)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16.0)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstText: "5221 364869", secondText: "Passport", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
