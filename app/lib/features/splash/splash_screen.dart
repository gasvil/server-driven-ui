import 'package:app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.appLogo, width: 100),
            Text("Server Driven UI"),
            Text('Project'),
          ],
        ),
      ),
    );
  }
}
