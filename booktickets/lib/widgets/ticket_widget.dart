import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_widget.dart';
import 'package:booktickets/widgets/ticket_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;
  const TicketWidget({super.key, required this.ticket, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(isColor ? 20 : 0)),
        child: Column(
          children: [
            // Showing the blue part of card/ticket
            Container(
              decoration: BoxDecoration(
                color: isColor ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: Styles.headLineStyle3.copyWith(
                              color:
                                  isColor ? Colors.white : Styles.textColor)),
                      Expanded(child: Container()),
                      ThickWidget(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilderWidget(
                              section: 8,
                              isColor: isColor,
                            )),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor
                                  ? Colors.white
                                  : const Color(0xFF8ACCF7),
                            ),
                          ),
                        )
                      ])),
                      ThickWidget(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: Styles.headLineStyle3.copyWith(
                              color: isColor ? Colors.white : Styles.textColor))
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          textAlign: TextAlign.start,
                          style: Styles.headLineStyle4.copyWith(
                              color: isColor
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle3.copyWith(
                            color: isColor ? Colors.white : Styles.textColor),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                              color: isColor
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Showing the orange part of card/ticket
            Container(
              color: isColor ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: AppLayout.getWidth(5),
                                  height: AppLayout.getHeight(1),
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor
                                              ? Colors.white
                                              : Colors.grey.shade300)),
                                )),
                      );
                    },
                  )),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor ? 21 : 0),
                      bottomRight: Radius.circular(isColor ? 21 : 0))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketInfoWidget(
                        title: "Date",
                        value: ticket['date'],
                        isColor: isColor,
                        alignment: CrossAxisAlignment.start,
                      ),
                      TicketInfoWidget(
                        title: "Departure Time",
                        value: ticket['departure_time'],
                        isColor: isColor,
                        alignment: CrossAxisAlignment.center,
                      ),
                      TicketInfoWidget(
                        title: "Number",
                        value: ticket['number'],
                        isColor: isColor,
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
