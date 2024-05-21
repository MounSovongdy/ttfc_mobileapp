import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';

class ButtonWidget {
  static Widget submitButton(
    String txtName, {
    required onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultCircular),
          color: mainColor.withOpacity(0.8),
        ),
        child: Center(
          child: Text(
            txtName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontText,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }

  static Widget submitButton1(
    String txtName, {
    required onTap,
    Color? backgroundColor = mainColor,
    Color? textColor = whiteColor,
    icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultCircular),
          color: backgroundColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(
                width: 5,
              ),
              Text(
                txtName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontText,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
