import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/loginscreen/login.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
// Wait for 3 seconds
    await Future.delayed(
      const Duration(seconds: 1),
    );
// Navigate to Home Page and remove all previous routes
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
