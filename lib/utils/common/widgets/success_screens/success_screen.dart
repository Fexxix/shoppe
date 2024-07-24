import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/utils/common/styles/space_styles.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: AppSpaceStyles.paddingWithAppbarHeight,
        child: Center(
            child: Column(children: [
          const Image(image: AssetImage(AppImages.staticSuccessIllustration)),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Get.theme.textTheme.headlineLarge,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: Get.theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          SizedBox(
            width: AppDeviceUtils.getScreenWidth(),
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text(AppTexts.appContinue),
            ),
          ),
        ])),
      ),
    ));
  }
}
