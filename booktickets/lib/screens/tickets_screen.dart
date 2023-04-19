import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_info_widget.dart';
import 'package:booktickets/widgets/ticket_widget.dart';
import 'package:booktickets/widgets/top_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        body: Container(
      color: Styles.bgColor,
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(40)),
              const TopTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              TicketWidget(ticket: ticketList[1], isColor: false),
              const SizedBox(
                height: 1,
              ),
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TicketInfoWidget(
                            title: "Passenger",
                            value: "Nhut Huynh",
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                          ),
                          TicketInfoWidget(
                            title: "Passport",
                            value: "5221 384689",
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderWidget(
                        section: 15,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TicketInfoWidget(
                            title: "Number of E-ticket",
                            value: "364738 88137201",
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                          ),
                          TicketInfoWidget(
                            title: "Booking Code",
                            value: "B2SG28",
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const LayoutBuilderWidget(
                        section: 15,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2451",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.grey.shade500),
                              )
                            ],
                          ),
                          const TicketInfoWidget(
                            title: "Price",
                            value: "\$249.99",
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(15)),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    height: 70,
                    width: double.infinity,
                    color: Styles.textColor,
                    data: 'https://github.com/nhuthq/booktickets_flutter',
                    barcode: Barcode.code128(),
                    drawText: false,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: TicketWidget(ticket: ticketList[1]),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
