import 'package:flutter/material.dart';
import 'package:shoppe/utils/constants/image_strings.dart';
import 'package:shoppe/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.google),
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.facebook),
          ),
        ),
      ],
    );
  }
}
