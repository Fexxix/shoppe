import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
            width: 120, height: 120, image: AssetImage(AppImages.appLogo)),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(
          AppTexts.loginTitle,
          style: Get.theme.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(AppTexts.loginSubTitle,
            style: Get.theme.textTheme.bodyMedium, textAlign: TextAlign.center),
      ],
    );
  }
}
