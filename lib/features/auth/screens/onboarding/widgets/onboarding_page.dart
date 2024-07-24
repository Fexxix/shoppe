import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            width: AppDeviceUtils.getScreenWidth() * 0.8,
            height: AppDeviceUtils.getScreenHeight() * 0.6,
            image: AssetImage(image)),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Get.theme.textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Get.theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
