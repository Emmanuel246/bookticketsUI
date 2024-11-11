import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column_layou.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "5221 364869",
                            secondText: "passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: "0055 444 77147",
                            secondText: "Number of E-ticket",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: "B2SG28",
                            secondText: "Booking Code",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: "\$249.99",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                /*
              bar code
              */
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      )),
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        data: 'https://github.com/martin0vovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 21,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 21,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ));
  }
}
