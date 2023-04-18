import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketInfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool isColor;
  final CrossAxisAlignment alignment;
  const TicketInfoWidget(
      {super.key,
      required this.title,
      required this.value,
      this.isColor = true,
      this.alignment = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          value,
          style: Styles.headLineStyle3
              .copyWith(color: isColor ? Colors.white : Styles.textColor),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          title,
          style: Styles.headLineStyle4
              .copyWith(color: isColor ? Colors.white : Colors.grey.shade500),
        ),
      ],
    );
  }
}
