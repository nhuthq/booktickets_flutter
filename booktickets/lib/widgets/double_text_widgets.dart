import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Upcoming Flights",
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text("View all",
              style: Styles.textStyle.copyWith(color: Styles.primary)),
        )
      ],
    );
  }
}
