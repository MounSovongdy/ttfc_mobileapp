
import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';

class AdditionalWidget {
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
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultPadding),
                    color: mainColor,
                  ),
                  child: icon,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 7,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: secondGrayColor,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: onTap,
                        child: SizedBox(
                          height: 50,
                          //width: 292,
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget widget2(
      BuildContext context,
    String txtName, {
    required onTap,
    icon,
  }) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          const SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultPadding),
                color: mainColor,
              ),
              child: icon,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 7,
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  InkWell(
                    onTap: onTap,
                    child: SizedBox(
                      height: 50,
                      //width: 292,
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
          ),
        ],
      ),
    );
  }

  static Widget widget3(
    String txttitle,
    String txtdiscr,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 40,
          //color: bgColor,
          child: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(txttitle),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: 311,
          height: 40,
          child: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                txtdiscr,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
