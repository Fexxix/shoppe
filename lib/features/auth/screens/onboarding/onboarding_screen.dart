import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:shoppe/features/auth/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shoppe/features/auth/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shoppe/features/auth/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shoppe/features/auth/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnboardingPage(
                  image: AppImages.onBoardingImage1,
                  title: AppTexts.onBoardingTitle1,
                  subTitle: AppTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                  image: AppImages.onBoardingImage2,
                  title: AppTexts.onBoardingTitle2,
                  subTitle: AppTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                  image: AppImages.onBoardingImage3,
                  title: AppTexts.onBoardingTitle3,
                  subTitle: AppTexts.onBoardingSubTitle3,
                )
              ],
            ),
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
