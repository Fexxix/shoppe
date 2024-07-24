import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/login/login_screen.dart';
import 'package:shoppe/utils/common/styles/space_styles.dart';
import 'package:shoppe/utils/common/widgets/success_screens/success_screen.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            child: Column(
              children: [
                const Image(
                    image: AssetImage(AppImages.deliveredEmailIllustration)),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                Text(AppTexts.confirmEmailTitle,
                    textAlign: TextAlign.center,
                    style: Get.theme.textTheme.headlineMedium),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                const Text("fexxix@gmail.com"),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                Text(
                  AppTexts.confirmEmailSubTitle,
                  textAlign: TextAlign.center,
                  style: Get.theme.textTheme.bodyMedium
                      ?.copyWith(color: Get.theme.colorScheme.outline),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: AppDeviceUtils.getScreenWidth(),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(SuccessScreen(
                            title: AppTexts.yourAccountCreatedTitle,
                            subTitle: AppTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.offAll(const LoginScreen())));
                      },
                      child: const Text(AppTexts.appContinue)),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: AppDeviceUtils.getScreenWidth(),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(AppTexts.resendEmail)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
