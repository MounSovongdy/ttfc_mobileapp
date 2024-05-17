import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ttfc_app/utility/constant.dart';

class menuWidget {
  static Widget menuCategoryWidget(
    String txt,
    String image,
  ) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 60.0,
              height: 60.0,
            ),
            Text(txt),
          ],
        ),
      ),
    );
  }

  static Widget menuProductWidget(
    BuildContext context,
    String txtModel,
    String txtPrice,
    String txtBrand, {
    Color? backgroundColor = whiteColor,
    required String image,
    required onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultCircular),
            color: whiteColor,
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultCircular),
                  color: secondGrayColor,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            txtModel,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            txtPrice,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontText,
                              color: bgColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'USD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: secondGrayColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            txtBrand,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: secondGrayColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite_rounded,
                    color: bgColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget quoteProductWidget(
    BuildContext context,
    String txtModel,
    String txtPrice,
    String txtBrand,
      String txtYear,
      String dateSub,
    {
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 122,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultCircular),
              color: whiteColor,
            ),
            child: Row(
              children: [
                Container(
                  height: 106,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultCircular),
                    color: whiteColor,
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 106,
                      width: 253,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 30,
                            child: Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  txtModel,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontDiscription,
                                    color: blackColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          SizedBox(
                            width: 120,
                            height: 15,
                            child: Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  txtBrand,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontDiscription,
                                    color: grayColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          SizedBox(
                            width: 120,
                            height: 15,
                            child: Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  txtYear,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontDiscription,
                                    color: grayColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          SizedBox(
                            width: 120,
                            height: 15,
                            child: Center(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  dateSub,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontDiscription,
                                    color: grayColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 120,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultCircular),
                            topRight: Radius.circular(defaultPadding),
                          ),
                          color: bgColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              txtPrice,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontText,
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'USD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontDiscription,
                                color: secondGrayColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 8,
            bottom: 8,
            child: InkWell(
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: secondGrayColor,
                ),
                child: const Icon(
                  Icons.edit_document,
                  color: bgColor,
                  size: 18,
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
