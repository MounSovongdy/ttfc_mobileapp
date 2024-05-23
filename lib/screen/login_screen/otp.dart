import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/bottomNavigate.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  final String verificationId;

  const OTPScreen({super.key, required this.verificationId});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController otpCon = TextEditingController();
  bool wrongOTP = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
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
                  controller: otpCon,
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
                      otpCon.text = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: defaultPadding * 4),
              wrongOTP ? const Text('Wrong OTP') : const SizedBox(),
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
                  onTap: () async {
                    try {
                      final cred = PhoneAuthProvider.credential(
                        verificationId: widget.verificationId,
                        smsCode: otpCon.text,
                      );
                      await FirebaseAuth.instance
                          .signInWithCredential(cred)
                          .then((value) {
                        setState(() {
                          wrongOTP = false;
                          debugPrint(
                            'User Firebase is ${FirebaseAuth.instance.currentUser?.phoneNumber}',
                          );
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExample(),
                          ),
                        );
                      });
                    } catch (e) {
                      setState(() {
                        wrongOTP = true;
                      });
                      debugPrint(e.toString());
                      otpCon.clear();
                    }
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
        ),
      ),
    );
  }
}
