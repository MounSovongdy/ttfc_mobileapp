import 'package:flutter/material.dart';
import 'package:ttfc_app/widget/appbar.dart';
import 'package:ttfc_app/widget/textField.dart';

class RequestQuote extends StatelessWidget {
  const RequestQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.secondAppbar(context, 'New Quote'),
      body: buildBody(context),
    );
  }

  Widget buildBody (BuildContext context){
    return Column(
      children: [
        const ComboBoxExample(),
      ],
    );
  }
}