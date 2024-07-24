import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  // Variables

  // Update Current Index when Page Scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      // Get.to(LoginScreen());
    }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
