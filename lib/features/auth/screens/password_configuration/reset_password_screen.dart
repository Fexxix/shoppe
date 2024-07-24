import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/password_configuration/password_reset_email_sent_screen.dart';
import 'package:shoppe/utils/common/styles/space_styles.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              Text(
                AppTexts.forgotPasswordTitle,
                style: Get.theme.textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.forgotPasswordSubTitle,
                style: Get.theme.textTheme.labelSmall?.copyWith(
                  color: Get.theme.colorScheme.outline,
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: AppTexts.email,
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: AppDeviceUtils.getScreenWidth(),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(const PasswordResetEmailSentScreen());
                      },
                      child: const Text(AppTexts.submit)))
            ],
          ),
        ),
      ),
    );
  }
}
