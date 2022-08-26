import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/views/ticket_view.dart';
import 'package:booking/widgets/layout_builder_widget.dart';
import 'package:booking/widgets/ticket_screen_column_layout_widget.dart';
import 'package:booking/widgets/ticket_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21.0)), bottomRight: Radius.circular(AppLayout.getHeight(21.0))),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16.0)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16.0), vertical: AppLayout.getHeight(16.0)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstText: "5221 364869", secondText: "Passport", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20.0)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true),
                    Gap(AppLayout.getHeight(20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "364738 28274478", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(firstText: "B2SG28", secondText: "Booking code", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20.0)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true),
                    Gap(AppLayout.getHeight(20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11.0),
                                Text(" *** 2462", style: Styles.headLineStyle3),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5.0)),
                            Text("Payment method", style: Styles.headLineStyle4),
                          ],
                        ),
                        Column(
                          children: const [
                            AppColumnLayout(firstText: "\$249.99", secondText: "Price", alignment: CrossAxisAlignment.end),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20.0)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true),
                    Gap(AppLayout.getHeight(20.0)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15.0)),
                      child: BarcodeWidget(
                        data: "https://github.com/martinovovo",
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        height: AppLayout.getHeight(70.0),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20.0)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(16.0)),
                child: TicketView(ticket: ticketList[0], isColor: null),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(19.0),
            top: AppLayout.getWidth(285.0),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.0)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: AppLayout.getHeight(2.0)),
              ),
              child: CircleAvatar(
                maxRadius: AppLayout.getHeight(4.0),
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(19.0),
            top: AppLayout.getWidth(285.0),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.0)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: AppLayout.getHeight(2.0)),
              ),
              child: CircleAvatar(
                maxRadius: AppLayout.getHeight(4.0),
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
