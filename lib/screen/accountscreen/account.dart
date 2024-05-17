import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ttfc_app/utility/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/button.dart';
import 'package:ttfc_app/widget/somewidget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudAppColor,
      appBar: AppbarWidget.ThireAppbar(context, 'Profile'),
      body: buildBoby(context),
    );
  }

  Widget buildBoby(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 62,
                    width: 62,
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
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    height: 62,
                    width: 260,
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
                            fontSize: fontText,
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
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                    color: bgColor,
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
                  SettingWidget.widget1(
                    'Change Password',
                    icon: const Icon(
                      Icons.password_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {},
                  ),
                  SettingWidget.widget1(
                    'Languages',
                    icon: const Icon(
                      Icons.language_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {},
                  ),
                  SettingWidget.widget2(
                    'Favorite',
                    icon: const Icon(
                      Icons.favorite_rounded,
                      color: whiteColor,
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
                  SettingWidget.widget1(
                    'Term & condition',
                    icon: const Icon(
                      Icons.gavel_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {},
                  ),
                  SettingWidget.widget1(
                    'FAQ',
                    icon: const Icon(
                      Icons.question_answer_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {},
                  ),
                  SettingWidget.widget2(
                    'About Me',
                    icon: const Icon(
                      Icons.info_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ButtonWidget.SubmitButton1(
              icon: Icon(
                Icons.logout_rounded,
                size: 20,
                color: bgColor.withOpacity(0.8),
              ),
              'Log Out',
              textColor: bgColor.withOpacity(0.8),
              backgroundColor: whiteColor,
              onTap: () => exit(0),
            ),
          ),
        ],
      ),
    );
  }
}
