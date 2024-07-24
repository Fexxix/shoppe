import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/controllers.onboarding/onboarding_controller.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class OnboardingNextButton extends GetView<OnBoardingController> {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Get.isDarkMode ? Colors.white : Colors.black,
        ),
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Get.isDarkMode ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
