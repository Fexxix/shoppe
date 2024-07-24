import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppe/utils/common/widgets/divider.dart';
import 'package:shoppe/utils/common/widgets/social_buttons.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Icons.person_outlined),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Icons.person_outlined),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Icons.email_outlined),
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
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              SizedBox(
                width: AppDeviceUtils.getScreenWidth() * 0.7,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "${AppTexts.iAgreeTo} ",
                      style: Get.theme.textTheme.labelMedium),
                  TextSpan(
                      text: "${AppTexts.privacyPolicy} ",
                      style: Get.theme.textTheme.labelMedium
                          ?.copyWith(color: Get.theme.primaryColor)),
                  TextSpan(
                      text: "${AppTexts.and} ",
                      style: Get.theme.textTheme.labelMedium),
                  TextSpan(
                    text: AppTexts.termsOfUse,
                    style: Get.theme.textTheme.labelMedium
                        ?.copyWith(color: Get.theme.primaryColor),
                  )
                ])),
              )
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          SizedBox(
            width: AppDeviceUtils.getScreenWidth(),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTexts.createAccount),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          AppDividerWithText(
              width: AppDeviceUtils.getScreenWidth() * 0.6,
              text: AppTexts.orSignUpWith),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          const SocialButtons(),
        ],
      ),
    );
  }
}
