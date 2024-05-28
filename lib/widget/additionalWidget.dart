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
          height: 50,
          child: Row(
            children: [
              const SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultPadding),
                    color: mainColor,
                  ),
                  child: icon,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 9,
                child: Container(
                  height: 40,
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
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              txtName,
                              style: const TextStyle(
                                fontSize: fontDiscription,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: iconSize,
                        color: secondGrayColor,
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
      height: 50,
      child: Row(
        children: [
          const SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultPadding),
                color: mainColor,
              ),
              child: icon,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 9,
            child: SizedBox(
              height: 40,
              child: Row(
                children: [
                  InkWell(
                    onTap: onTap,
                    child: SizedBox(
                      height: 40,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          txtName,
                          style: const TextStyle(
                            fontSize: fontDiscription,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: iconSize,
                    color: secondGrayColor,
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
    String txtTittle,
    String txtDis,
  ) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            width: 100,
            height: 40,
            //color: bgColor,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  txtTittle,
                  style: const TextStyle(
                    fontSize: fontUSD,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Text(' : '),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 40,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  txtDis,
                  style: const TextStyle(fontSize: fontUSD),
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget widget4(
    String txtTittle, {
    required onPressed,
  }) {
    return Row(
      children: [
        Text(
          txtTittle,
          textAlign: TextAlign.right,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontText,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'More...',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontDiscription,
                color: mainColor.withOpacity(0.8)),
          ),
        ),
      ],
    );
  }

  static Widget widget5(String txtTittle) {
    return Text(
      txtTittle,
      textAlign: TextAlign.right,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontText,
      ),
    );
  }

  static Widget widget6(String txtValue, String txtTittle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txtValue,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontDiscription,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          txtTittle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontUSD,
          ),
        ),
      ],
    );
  }
}
