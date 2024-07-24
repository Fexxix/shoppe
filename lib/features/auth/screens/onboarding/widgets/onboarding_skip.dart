import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class OnboardingSkip extends GetView<OnBoardingController> {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppDeviceUtils.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            controller.skipPage();
          },
          child: const Text('Skip'),
        ));
  }
}
