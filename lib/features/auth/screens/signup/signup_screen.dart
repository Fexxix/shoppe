import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Text(AppTexts.signupTitle,
                  style: Get.theme.textTheme.headlineMedium),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}
