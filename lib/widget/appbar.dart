import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';

class AppbarWidget {
  static AppBar mainAppbar() {
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
            color: mainColor,
          )
        ],
      ),
    );
  }

  static AppBar additionalAppbar(
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
            color: mainColor,
          ),
        ),
      ),
      backgroundColor: backgroudAppColor,
    );
  }

  static AppBar secondAppbar(BuildContext context,String txtLable,) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
        color: mainColor,
      ),
      title: Text(
        txtLable,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontTitle,
          color: mainColor,
        ),
      ),
      backgroundColor: whiteColor,
    );
  }
}
