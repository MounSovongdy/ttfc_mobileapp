import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/detail_screen/detail.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/additionalWidget.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/product.dart';
import 'package:ttfc_app/widget/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listCategoryName = [
    "TOYOTA",
    "LEXUS",
    "TOYOTA",
    "LEXUS",
    "TOYOTA",
    "LEXUS"
  ];

  final listCategoryImg = [
    "images/toyota.png",
    "images/lexus.png",
    "images/toyota.png",
    "images/lexus.png",
    "images/toyota.png",
    "images/lexus.png"
  ];

  final listSUVName = ["YARIS CROSS", "YARIS CROSS HEV"];
  final listSUVImg = ["images/croos.png", "images/croos1.png"];
  final listPrice = ["37900", "39900"];
  final listBrand = ["TOYOTA", "TOYOTA"];
  final listYear = ["2024", "2023"];
  final listPickupName = ["HILUX REVO", "YARIS CROSS HEV"];
  final listPickupImg = ["images/car_pickup.png", "images/car_pickup1.png"];
  final listPrice1 = ["39900", "40000"];
  final listBrand1 = ["TOYOTA", "TOYOTA"];
  final listYear1 = ["2024", "2024"];

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudAppColor,
      appBar: AppbarWidget.mainAppbar(),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          Container(
            child: SliderWidget.slideAdd(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: AdditionalWidget.widget5('Category'),
          ),
          SizedBox(
            height: 130.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: listCategoryName.length,
              itemBuilder: (context, index) {
                return MenuWidget.menuCategoryWidget(
                  listCategoryName[index],
                  listCategoryImg[index],
                );
              },
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: AdditionalWidget.widget4(
              'SUV',
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 230.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listSUVName.length,
                itemBuilder: (context, index) {
                  return MenuWidget.menuProductWidget(
                    context,
                    listSUVName[index],
                    listPrice[index],
                    listBrand[index],
                    listYear[index],
                    image: listSUVImg[index],
                    isLike: isFavorite,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            carName: listSUVName[index],
                            carPrice: listPrice[index],
                            carBrand: listBrand[index],
                            carYear: listYear[index],
                            carImg: listSUVImg[index],
                          ),
                        ),
                      );
                    },
                    onTap1: null,
                  );
                }),
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: AdditionalWidget.widget4(
              'Pick Up',
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 230.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listPickupName.length,
              itemBuilder: (context, index) {
                return MenuWidget.menuProductWidget(
                  context,
                  listPickupName[index],
                  listPrice1[index],
                  listBrand1[index],
                  listYear1[index],
                  image: listPickupImg[index],
                  isLike: isFavorite,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          carName: listPickupName[index],
                          carPrice: listPrice1[index],
                          carBrand: listBrand1[index],
                          carYear: listYear1[index],
                          carImg: listPickupImg[index],
                        ),
                      ),
                    );
                  },
                  onTap1: null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
