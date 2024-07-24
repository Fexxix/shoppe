import 'package:flutter/material.dart';
import 'package:shoppe/utils/constants/sizes.dart';
import 'package:shoppe/utils/device/device_utility.dart';

class AppSpaceStyles {
  static final paddingWithAppbarHeight = EdgeInsets.only(
    top: AppDeviceUtils.getAppBarHeight(),
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
  );
}
