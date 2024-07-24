import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends GetView<OnBoardingController> {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 15,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: Get.isDarkMode ? Colors.white : Colors.black,
            dotHeight: 6),
      ),
    );
  }
}
