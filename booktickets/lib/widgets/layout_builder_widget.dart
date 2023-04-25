import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool isColor;
  final int section;
  const LayoutBuilderWidget(
      {super.key, this.isColor = true, required this.section});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / section).floor(),
              (index) => SizedBox(
                    width: AppLayout.getWidth(5),
                    height: AppLayout.getHeight(1),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:
                                isColor ? Colors.white : Colors.grey.shade300)),
                  )),
        );
      },
    );
  }
}
