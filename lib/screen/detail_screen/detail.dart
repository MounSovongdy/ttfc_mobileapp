import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/quote_screen/reqoute.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/bottombar.dart';
import 'package:ttfc_app/widget/slider.dart';
import 'package:ttfc_app/widget/additionalWidget.dart';

class DetailScreen extends StatefulWidget {
  final String carName;
  final String carPrice;
  final String carBrand;
  final String carYear;
  final String carImg;

  const DetailScreen({
    super.key,
    required this.carName,
    required this.carPrice,
    required this.carBrand,
    required this.carYear,
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
      appBar: AppbarWidget.secondAppbar(context, 'Details'),
      body: buildBody(context),
      bottomNavigationBar: BottomBarWidget.temporaryBottomBar(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const RequestQuote(),
            ),
          );
        },
      ),
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
                          color: mainColor,
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
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.carYear,
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
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultCircular),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: AdditionalWidget.widget6('103', 'Horsepower')),
                  Container(
                    width: 1,
                    color: secondGrayColor,
                  ),
                  Expanded(child: AdditionalWidget.widget6('136Nm', 'Torque')),
                  Container(
                    width: 1,
                    color: secondGrayColor,
                  ),
                  Expanded(child: AdditionalWidget.widget6('1.5L', 'Engine')),
                ],
              ),
            ),
            const SizedBox(
              height: defaultPadding * 3,
            ),
            AdditionalWidget.widget5('Electric Specifications'),
            const SizedBox(
              height: defaultPadding * 2,
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
                              color: _isExpanded ? mainColor : blackColor,
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
                              color: _isExpanded ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded1 ? mainColor : blackColor,
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
                              color: _isExpanded1 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded1) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded2 ? mainColor : blackColor,
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
                              color: _isExpanded2 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded2) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded3 ? mainColor : blackColor,
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
                              color: _isExpanded3 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded3) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded4 ? mainColor : blackColor,
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
                              color: _isExpanded4 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded4) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5 L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded5 ? mainColor : blackColor,
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
                              color: _isExpanded4 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded5) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
                              color: _isExpanded6 ? mainColor : blackColor,
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
                              color: _isExpanded6 ? mainColor : blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded6) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        children: [
                          AdditionalWidget.widget3('Engine type',
                              '1.5L, 4-cylinder gasoline, in-line, 16-valve DOHV Chain Drive with Dual VVT-i'),
                          AdditionalWidget.widget3('Transmission', 'CVT'),
                          AdditionalWidget.widget3('Displacement', '1,496 cc'),
                          AdditionalWidget.widget3(
                              'Maximum output', '91 HP (67 kW) @ 5,500 RPM'),
                          AdditionalWidget.widget3(
                              'Maximum torque', '121 Nm @ 4,800 RPM'),
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
