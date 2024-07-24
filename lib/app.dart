import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppe/features/auth/screens/onboarding/onboarding_screen.dart';
import 'package:shoppe/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: OnboardingScreen(),
    );
  }
}
