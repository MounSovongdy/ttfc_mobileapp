import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/bottomNavigate.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? otpCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('images/logo.png'),
          ),
          const SizedBox(height: 40),
          const Text(
            'Verification',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontTitle,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Enter the OTP send to your phone number',
            style: TextStyle(
              fontSize: fontDiscription,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding * 2),
            child: Pinput(
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: mainColor,
                  ),
                ),
                textStyle: const TextStyle(
                  fontSize: fontText,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
              onSubmitted: (value) {
                setState(() {
                  otpCode = value;
                });
              },
            ),
          ),
          const SizedBox(height: defaultPadding * 4),
          Padding(
            padding: const EdgeInsets.all(defaultPadding * 2),
            child: ButtonWidget.submitButton1(
              icon: const Icon(
                Icons.verified_rounded,
                size: 20,
                color: whiteColor,
              ),
              'Verify',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavigationBarExample(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: defaultPadding * 4,
          ),
          const Text(
            'Did you receive any code?',
            style: TextStyle(
              fontSize: fontDiscription,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Resend New Code',
              style: TextStyle(
                fontSize: fontDiscription,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
