import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/login_screen/otp.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/style/textfield_controllar.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:ttfc_app/widget/textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: defaultPadding * 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              'Create Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontTitle,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              'Sign up your account to get start',
              style: TextStyle(
                fontSize: fontDiscription,
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding * 4,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: TextFieldWidget.simTextField(
              "Name",
              controller: nameController,
              icon: const Icon(Icons.person),
              keyboardtype: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: TextFieldWidget.phoneTextField(
              "Phone Number",
              "+855",
              " xx xxx xxx",
              controller: phoneControllerRegis,
              icon: const Icon(Icons.phone),
              keyboardtype: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: TextFieldWidget.simTextField(
              "Password",
              controller: passController,
              icon: const Icon(Icons.key_rounded),
              keyboardtype: TextInputType.visiblePassword,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: TextFieldWidget.simTextField(
              "Confirm Password",
              controller: conController,
              icon: const Icon(Icons.key_rounded),
              keyboardtype: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(
            height: defaultPadding * 8,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ButtonWidget.submitButton1(
              icon: const Icon(
                Icons.skip_next_rounded,
                size: 20,
                color: whiteColor,
              ),
              'Done',
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
      ),
    );
  }
}
