import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/loginscreen/otp.dart';
import 'package:ttfc_app/utility/constant.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phoneController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
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
          child: TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone Number",
              prefixText: '+855 ',
              // Adjust as needed for locale
              hintText: "xx xxx xxx",
              labelStyle: const TextStyle(
                fontSize: fontText,
                fontWeight: FontWeight.bold,
                color: bgColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: OutlineInputBorder(
                // Outline border style
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                // Border style when TextField is focused
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(color: bgColor, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                // Border style when TextField is enabled but not focused
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                // Border style when TextField has an error
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                // Border style when TextField is focused and has an error
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
              ),
              prefixIcon: const Icon(Icons.phone, color: bgColor,),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 30.0,
              ), // Padding inside the TextField
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding * 2),
          child: ButtonWidget.SubmitButton1(
            icon: const Icon(
              Icons.skip_next_rounded,
              size: 20,
              color: whiteColor,
            ),
            'Continue',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OTPScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

