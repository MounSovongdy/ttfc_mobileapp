import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/style/textField_controller.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:ttfc_app/widget/textField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                "Email",
                controller: emailController,
                icon: const Icon(Icons.email_rounded),
                keyboardtype: TextInputType.emailAddress,
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
                  Icons.done,
                  size: 20,
                  color: whiteColor,
                ),
                "Submitted",
                onTap: () async {
                  await users.add({
                    'userId': '',
                    'userName': nameController.text,
                    'tel': '+855${phoneControllerRegis.text}',
                    'email' : emailController.text,
                    'password': passController.text,
                    'cpassword': conController.text,
                  }).then(
                    (value) {
                      debugPrint('Added');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const OTPScreen(verificationId: ''),
                      //   ),
                      // );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
