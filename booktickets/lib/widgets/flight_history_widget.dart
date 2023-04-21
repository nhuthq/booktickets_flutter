import 'package:booktickets/widgets/ticket_info_widget.dart';
import 'package:flutter/material.dart';

class FlightHistoryWidget extends StatelessWidget {
  final Map<String, dynamic> flightHistory;
  const FlightHistoryWidget({super.key, required this.flightHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TicketInfoWidget(
            title: "Miles",
            value: flightHistory['miles'].toString(),
            isColor: false,
            alignment: CrossAxisAlignment.start,
          ),
          TicketInfoWidget(
            title: "Received from",
            value: flightHistory['airline'],
            isColor: false,
            alignment: CrossAxisAlignment.end,
          )
        ],
      ),
    );
  }
}
