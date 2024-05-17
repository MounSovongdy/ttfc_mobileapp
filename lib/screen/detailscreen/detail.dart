import 'package:flutter/material.dart';
import 'package:ttfc_app/utility/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/bottombar.dart';
import 'package:ttfc_app/widget/slider.dart';

class DetailScreen extends StatefulWidget {
  final String carName;
  final String carPrice;
  final String carBrand;
  final String carImg;

  const DetailScreen({
    super.key,
    required this.carName,
    required this.carPrice,
    required this.carBrand,
    required this.carImg,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isExpanded = false;
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  bool _isExpanded5 = false;
  bool _isExpanded6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudAppColor,
      appBar: AppbarWidget.SecondAppbar(context),
      body: buildBody(context),
      bottomNavigationBar: BottomBarWidget.temporaryBottomBar(),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.carName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontText,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.carPrice,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontText,
                          color: bgColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'USD',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontDiscription,
                          color: blackColor.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.carBrand,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontDiscription,
                          color: blackColor.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SliderWidget.slideImage(),
            const SizedBox(
              height: defaultPadding,
            ),
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 1,
                    color: secondGrayColor,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 1,
                    color: secondGrayColor,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            const SizedBox(
              height: 30.0,
              child: Text(
                'Electric Specifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontText,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Engine',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            },
                            icon: Icon(
                              _isExpanded
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Chassis',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded1 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded1 = !_isExpanded1;
                              });
                            },
                            icon: Icon(
                              _isExpanded1
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded1 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded1) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Dimensions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded2 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded2 = !_isExpanded2;
                              });
                            },
                            icon: Icon(
                              _isExpanded2
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded2 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded2) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Exterior Features',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded3 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded3 = !_isExpanded3;
                              });
                            },
                            icon: Icon(
                              _isExpanded3
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded3 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded3) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Interior Features',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded4 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded4 = !_isExpanded4;
                              });
                            },
                            icon: Icon(
                              _isExpanded4
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded4 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded4) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Safety',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded5 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded5 = !_isExpanded5;
                              });
                            },
                            icon: Icon(
                              _isExpanded5
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded4 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded5) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text(
                            'Security',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontDiscription,
                              color: _isExpanded6 ? bgColor : blackColor,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded6 = !_isExpanded6;
                              });
                            },
                            icon: Icon(
                              _isExpanded6
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: _isExpanded6 ? bgColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded6) ...[
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                          Container(
                            height: 50,
                            color: bgColor,
                          ),
                          Container(
                            height: 50,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
