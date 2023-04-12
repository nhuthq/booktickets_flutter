import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 15, top: 5),
      decoration: BoxDecoration(
        color: Styles.primary,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primary,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.png")
              )
            ),
          ),
          const Gap(10),
          Text(
            "Open Space", 
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text("London",
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text("\$40/night",
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}