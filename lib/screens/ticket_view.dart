import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200.0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Showing the blue part if the ticket
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21.0),
                      topRight: Radius.circular(21.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "NYC",
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Expanded(child: Container()), // const Spacer(),
                          ThickContainer(),
                          Expanded(
                            child: Stack(
                              // Widget over lapping
                              children: [
                                SizedBox(
                                  height: 24.0,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraints) {
                                      print("The width is ${constraints.constrainWidth()}");
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                          (constraints.constrainWidth() / 6).floor(),
                                          (index) => SizedBox(
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

                          ThickContainer(),
                          Expanded(child: Container()), // const Spacer(),
                          Text(
                            "LDN",
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100.0,
                            child: Text(
                              "New-York",
                              style: Styles.headLineStyle4.copyWith(color: Colors.white),
                            ),
                          ),
                          Text(
                            "8H 30M",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            width: 100.0,
                            child: Text(
                              "London",
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
                      const SizedBox(
                        height: 20.0,
                        width: 10.0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
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
                      const SizedBox(
                        height: 20.0,
                        width: 10.0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
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
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21.0),
                      bottomRight: Radius.circular(21.0),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0, bottom: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1 MAY",
                                style: Styles.headLineStyle3.copyWith(color: Colors.white),
                              ),
                              const Gap(5),
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
                                "08:00 AM",
                                style: Styles.headLineStyle3.copyWith(color: Colors.white),
                              ),
                              const Gap(5),
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
                                "23",
                                style: Styles.headLineStyle3.copyWith(color: Colors.white),
                              ),
                              const Gap(5),
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
        ],
      ),
    );
  }
}
