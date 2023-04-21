import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/ticket_info_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(20),
          horizontal: AppLayout.getWidth(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getWidth(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png')),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'Da Nang',
                    style: Styles.headLineStyle4.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(20),
                      ),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentIcons.shield_12_filled,
                              size: 15, color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primary, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(
            AppLayout.getHeight(
              8,
            ),
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primary,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  ),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(
                    AppLayout.getHeight(30),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        FluentIcons.lightbulb_filament_24_filled,
                        color: Styles.primary,
                        size: 27,
                      ),
                    ),
                    Gap(
                      AppLayout.getWidth(12),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You \'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "You have 25 flights in this year",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(
            AppLayout.getHeight(
              25,
            ),
          ),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Container(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Styles.textColor,
                  ),
                ),
                Gap(AppLayout.getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4
                          .copyWith(fontSize: 16, color: Colors.grey.shade500),
                    ),
                    Text(
                      "24 Apr 2023",
                      style: Styles.headLineStyle4
                          .copyWith(fontSize: 16, color: Colors.grey.shade500),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketInfoWidget(
                      title: "Miles",
                      value: "23 042",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    TicketInfoWidget(
                      title: "Received from",
                      value: "NV Airline",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketInfoWidget(
                      title: "Miles",
                      value: "23 042",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    TicketInfoWidget(
                      title: "Received from",
                      value: "NV Airline",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketInfoWidget(
                      title: "Miles",
                      value: "23 042",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    TicketInfoWidget(
                      title: "Received from",
                      value: "NV Airline",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketInfoWidget(
                      title: "Miles",
                      value: "23 042",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    TicketInfoWidget(
                      title: "Received from",
                      value: "NV Airline",
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(24)),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "Get more miles",
                      style: Styles.textStyle.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.primary),
                    ),
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
