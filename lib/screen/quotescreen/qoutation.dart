import 'package:flutter/material.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/product.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.ThireAppbar(context, 'Favorite'),
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
              return menuWidget.favoProductWidget(context);
            },
          ),
        ],
      ),
    );
  }
}
