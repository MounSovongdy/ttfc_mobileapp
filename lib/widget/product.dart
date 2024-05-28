import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';

class MenuWidget {
  static Widget menuCategoryWidget(
    String txtName,
    String image,
  ) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          InkWell(
            child: Container(
              width: 90,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                border: Border.all(
                  width: 1,
                  color: mainColor,
                ),
                color: whiteColor,
              ),
              child: Center(
                child: SizedBox(
                  width: 70,
                  height: 60,
                  child: Image.asset(image),
                ),
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            txtName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
          ),
        ],
      ),
    );
  }

  static Widget menuProductWidget(
    BuildContext context,
    String txtModel,
    String txtPrice,
    String txtBrand,
    String txtYear, {
    Color? backgroundColor = whiteColor,
    required String image,
    required onTap,
        required onTap1,
    bool isLike = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultCircular),
            color: whiteColor,
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultCircular),
                  color: secondGrayColor.withOpacity(0.4),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 90,
                  height: 20,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(defaultCircular),
                      topLeft: Radius.circular(defaultPadding),
                    ),
                    color: mainColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        txtPrice,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontDiscription,
                          color: whiteColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'USD',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontUSD,
                          color: secondGrayColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: 20,
                                child: Text(
                                  txtModel,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontDiscription,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              txtBrand,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontUSD,
                                color: blackColor.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              txtYear,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontUSD,
                                color: blackColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Positioned(
                right: 15,
                bottom: 15,
                child: InkWell(
                  onTap: onTap1,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: secondGrayColor,
                    ),
                    child: Icon(
                      isLike ? Icons.favorite_rounded : Icons.favorite_border,
                      color: mainColor,
                      size: iconSize,
                    ),
                  ),
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
    String dateSub, {
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultCircular),
              color: whiteColor,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 106,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultCircular),
                      color: whiteColor,
                      image: DecorationImage(
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 253,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 160,
                              height: 15,
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
                              height: 12,
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    txtBrand,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontUSD,
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
                              height: 12,
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    txtYear,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontUSD,
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
                              height: 12,
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    dateSub,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontUSD,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Price Label.
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 90,
              height: 25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(defaultCircular),
                  topRight: Radius.circular(defaultPadding),
                ),
                color: mainColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    txtPrice,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontDiscription,
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'USD',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontUSD,
                      color: secondGrayColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Edit Button.
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
                  color: mainColor,
                  size: iconSize,
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
