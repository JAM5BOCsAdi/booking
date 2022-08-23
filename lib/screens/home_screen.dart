import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/views/hotel_view.dart';
import 'package:booking/views/ticket_view.dart';
import 'package:booking/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.0)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50.0),
                      width: AppLayout.getWidth(50.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(40.0)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10.0)),
                    color: const Color(0xFFF4F6F0),
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40.0)),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15.0)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20.0)),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20.0)),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View All"),
          ),
          Gap(AppLayout.getHeight(15.0)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20.0)),
            child: Row(
              children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
