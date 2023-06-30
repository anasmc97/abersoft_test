import 'dart:async';

import 'package:flutter/material.dart';
import 'package:abersoft_test/core/extensions/context_extensions.dart';
import 'package:abersoft_test/feature/login/presentation/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Customize the background color or add any other desired widgets
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/LOGO_BLUE 1.png',
          width: context.media.size.width * 0.5,
          height: context.media.size.height * 0.2,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
