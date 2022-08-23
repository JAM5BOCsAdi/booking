import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/thick_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  bool? _isNull() {
    if (isColor == null) {
      return null;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200.0),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Showing the blue part if the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21.0)),
                  topRight: Radius.circular(AppLayout.getHeight(21.0)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()), // const Spacer(),
                      ThickContainer(isColor: _isNull()),
                      Expanded(
                        child: Stack(
                          // Widget over lapping
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24.0),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  print("The width is ${constraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6).floor(),
                                      (index) => const SizedBox(
                                        width: 3.0,
                                        height: 1.0,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ), // const Spacer(),
                      ThickContainer(isColor: _isNull()),
                      Expanded(child: Container()), // const Spacer(),
                      Text(
                        "${ticket['to']['code']}",
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          "${ticket['from']['name']}",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "${ticket['flying_time']}",
                        style: Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          "${ticket['to']['name']}",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Showing the orange part if the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10.0)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10.0)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                width: 5.0,
                                height: 1.0,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10.0)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10.0)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Bottom part of the orange ticket
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(21.0)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21.0)),
                ),
              ),
              padding: EdgeInsets.only(left: AppLayout.getHeight(16.0), top: AppLayout.getHeight(10.0), right: AppLayout.getHeight(16.0), bottom: AppLayout.getHeight(16.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticket['date']}",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.getHeight(5.0)),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticket['departure_time']}",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.getHeight(5.0)),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          Gap(AppLayout.getHeight(5.0)),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
