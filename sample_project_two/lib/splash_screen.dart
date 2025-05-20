import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sample_project_two/page1.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize resources
    await Future.delayed(const Duration(seconds: 2));

    // Remove the splash screen
    FlutterNativeSplash.remove();

    // Navigate to your main app
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Page1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/mtta.png', // Your image path
          width: 200, // Adjust width as needed
          height: 200, // Adjust height as needed
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
