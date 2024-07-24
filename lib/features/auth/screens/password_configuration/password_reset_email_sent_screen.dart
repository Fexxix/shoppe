import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/login/login_screen.dart';
import 'package:shoppe/utils/common/styles/space_styles.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class PasswordResetEmailSentScreen extends StatelessWidget {
  const PasswordResetEmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Get.offAll(const LoginScreen());
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: AppSpaceStyles.paddingWithAppbarHeight,
            child: Center(
                child: Column(children: [
              const Image(
                  image: AssetImage(AppImages.deliveredEmailIllustration)),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Text(
                AppTexts.changeYourPasswordTitle,
                textAlign: TextAlign.center,
                style: Get.theme.textTheme.headlineLarge,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const Text("fexxix@gmail.com"),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Text(
                AppTexts.changeYourPasswordSubTitle,
                textAlign: TextAlign.center,
                style: Get.theme.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SizedBox(
                width: AppDeviceUtils.getScreenWidth(),
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const LoginScreen());
                  },
                  child: const Text(AppTexts.done),
                ),
              ),
              SizedBox(
                width: AppDeviceUtils.getScreenWidth(),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.resendEmail),
                ),
              ),
            ])),
          ),
        ));
  }
}
