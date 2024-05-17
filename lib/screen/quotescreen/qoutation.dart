import 'package:flutter/material.dart';
import 'package:ttfc_app/utility/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/product.dart';

class QuotationScreen extends StatelessWidget {
  const QuotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudAppColor,
      appBar: AppbarWidget.ThireAppbar(context, 'Quotation'),
      body: buildBoby(context),
    );
  }

  Widget buildBoby(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return menuWidget.quoteProductWidget(context, 'YARIS CROSS HEV','39900','TOYOTA','2024','15-05-2024',image: 'images/croos.png');
            },
          ),
        ],
      ),
    );
  }
}
