import 'package:flutter/material.dart';
import 'package:ttfc_app/utility/constant.dart';

class AppbarWidget {
  static AppBar MainAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroudAppColor,
      title: Row(
        children: [
          SizedBox(
            width: 250.0,
            height: 90.0,
            child: Image.asset('images/logo2.png'),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
            color: bgColor,
          )
        ],
      ),
    );
  }

  static AppBar SecondAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
        color: bgColor,
      ),
      title: Row(
        children: [
          const Spacer(),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: bgColor,
            ),
            child: Center(
              child: Image.asset('images/profile.jpeg'),
            ),
          ),
        ],
      ),
      backgroundColor: whiteColor,
    );
  }

  static AppBar ThireAppbar(
    BuildContext context,
    String txtLable,
  ) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Center(
        child: Text(
          txtLable,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontTitle,
            color: bgColor,
          ),
        ),
      ),
      backgroundColor: backgroudAppColor,
    );
  }
}
