import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/login_screen/login.dart';
import 'package:ttfc_app/screen/register_screen/register.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:ttfc_app/widget/additionalWidget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudAppColor,
      appBar: AppbarWidget.additionalAppbar(context, 'Profile'),
      body: buildBoby(context),
    );
  }

  Widget buildBoby(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultCircular),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: rejectColor,
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'images/profile.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultPadding),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Toyota Cambodia',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontDiscription,
                                color: blackColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              '089 999 642',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontDiscription,
                                color: blackColor.withOpacity(0.3),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded,
                            size: iconSize),
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  AdditionalWidget.widget1(
                    'Change Password',
                    icon: const Icon(
                      Icons.password_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                  AdditionalWidget.widget1(
                    'Languages',
                    icon: const Icon(
                      Icons.language_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                  AdditionalWidget.widget2(
                    context,
                    'Favorite',
                    icon: const Icon(
                      Icons.favorite_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  AdditionalWidget.widget1(
                    'Term & condition',
                    icon: const Icon(
                      Icons.gavel_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                  AdditionalWidget.widget1(
                    'FAQ',
                    icon: const Icon(
                      Icons.question_answer_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                  AdditionalWidget.widget2(
                    context,
                    'About Me',
                    icon: const Icon(
                      Icons.info_rounded,
                      color: whiteColor,
                      size: iconSize,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding * 8,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ButtonWidget.submitButton1(
              icon: Icon(
                Icons.logout_rounded,
                size: 20,
                color: mainColor.withOpacity(0.8),
              ),
              'Log Out',
              textColor: mainColor.withOpacity(0.8),
              backgroundColor: whiteColor,
              onTap: () => _signOut(context),
            ),
          ),
        ],
      ),
    );
  }

  void _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then(
      (value) {
        debugPrint('User is signed out success.');
        showDialog(
          barrierColor: secondColor.withOpacity(0.5),
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: backgroudAppColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultCircular),
              ),
              child: SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Do you want to Sign Out?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //color: whiteColor,
                          fontSize: fontText,
                        ),
                      ),
                      const Icon(
                        Icons.logout_rounded,
                        size: iconSize * 4,
                        //color: whiteColor,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(defaultCircular),
                                  color: rejectColor.withOpacity(0.5),
                                ),
                                height: 40,
                                child: const Center(
                                  child: Text(
                                    'NO',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: rejectColor,
                                        fontSize: fontDiscription),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(defaultCircular),
                                  color: mainColor,
                                ),
                                height: 40,
                                child: const Center(
                                  child: Text(
                                    'YES',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: whiteColor,
                                        fontSize: fontDiscription),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
