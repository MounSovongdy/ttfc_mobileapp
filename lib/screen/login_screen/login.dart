import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/login_screen/otp.dart';
import 'package:ttfc_app/screen/register_screen/register.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/style/textfield_controllar.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:ttfc_app/widget/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('images/logo.png'),
            ),
            const SizedBox(
              height: defaultPadding * 4,
            ),
            const Text(
              'Enter your phone number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontTitle,
              ),
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding * 2),
              child: TextFieldWidget.phoneTextField(
                "Phone Number",
                "+855",
                "xx xxx xxx",
                controller: phoneController,
                icon: const Icon(Icons.phone),
                keyboardtype: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding * 2),
              child: ButtonWidget.submitButton1(
                icon: const Icon(
                  Icons.skip_next_rounded,
                  size: 20,
                  color: whiteColor,
                ),
                'Continue',
                onTap: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: "+855${phoneController.text}",
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {
                      debugPrint(e.message);
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPScreen(
                            verificationId: verificationId,
                          ),
                        ),
                      );
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text(
                'Sign Up',
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
    );
  }
}
