import 'package:flutter/material.dart';
import 'package:shoppe/features/auth/screens/login/widgets/login_form.dart';
import 'package:shoppe/features/auth/screens/login/widgets/login_header.dart';
import 'package:shoppe/utils/common/styles/space_styles.dart';
import 'package:shoppe/utils/common/widgets/divider.dart';
import 'package:shoppe/utils/common/widgets/social_buttons.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/constants/text_strings.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: AppSpaceStyles.paddingWithAppbarHeight,
        child: SizedBox(
          width: AppDeviceUtils.getScreenWidth(),
          child: Column(
            children: [
              const LoginHeader(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const LoginForm(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              AppDividerWithText(
                  width: AppDeviceUtils.getScreenWidth() * 0.6,
                  text: AppTexts.orSignInWith),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    ));
  }
}
