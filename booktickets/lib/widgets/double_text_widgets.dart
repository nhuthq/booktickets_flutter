import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const DoubleTextWidget(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(subTitle,
              style: Styles.textStyle.copyWith(color: Styles.primary)),
        )
      ],
    );
  }
}
