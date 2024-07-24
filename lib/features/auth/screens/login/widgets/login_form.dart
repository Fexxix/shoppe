import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/login/signup/signup_screen.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    AppTexts.rememberMe,
                    style: Get.theme.textTheme.labelMedium,
                  ),
                ],
              ),
              Text(
                AppTexts.forgotPassword,
                style: Get.theme.textTheme.labelMedium
                    ?.copyWith(color: Get.theme.primaryColor),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          SizedBox(
            width: AppDeviceUtils.getScreenWidth(),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTexts.signIn),
            ),
          ),
          const SizedBox(
            height: AppSizes.sm,
          ),
          SizedBox(
            width: AppDeviceUtils.getScreenWidth(),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Get.theme.colorScheme.secondary,
                  foregroundColor: Get.theme.colorScheme.onSecondary),
              onPressed: () {
                Get.to(const SignupScreen());
              },
              child: const Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}