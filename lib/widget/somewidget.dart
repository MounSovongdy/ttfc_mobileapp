import 'package:flutter/material.dart';
import 'package:ttfc_app/utility/constant.dart';

class SettingWidget {
  static Widget widget1(
    String txtName, {
    required onTap,
    icon,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            children: [
              const SizedBox(width: 5),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding),
                  color: bgColor,
                ),
                child: icon,
              ),
              const SizedBox(width: 20),
              Container(
                height: 50,
                width: 333,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: secondGrayColor,
                  ),
                )),
                child: Row(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: SizedBox(
                        height: 50,
                        width: 292,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            txtName,
                            style: const TextStyle(
                              fontSize: fontText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget widget2(
    String txtName, {
    required onTap,
    icon,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            children: [
              const SizedBox(width: 5),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding),
                  color: bgColor,
                ),
                child: icon,
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 50,
                width: 333,
                child: Row(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: SizedBox(
                        height: 50,
                        width: 292,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            txtName,
                            style: const TextStyle(
                              fontSize: fontText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
