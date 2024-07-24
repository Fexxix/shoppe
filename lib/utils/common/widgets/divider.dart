import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/utils/constants/sizes.dart';

class AppDividerWithText extends StatelessWidget {
  final double width;
  final String text;

  const AppDividerWithText(
      {super.key, required this.width, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Get.theme.dividerTheme.color,
            thickness: 1,
            endIndent: AppSizes.sm,
          ),
        ),
        Text(
          text,
          style: Get.theme.textTheme.labelMedium,
        ),
        Expanded(
          child: Divider(
            color: Get.theme.dividerTheme.color,
            thickness: 1,
            indent: AppSizes.sm,
          ),
        ),
      ],
    );
  }
}
