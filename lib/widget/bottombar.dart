import 'package:flutter/material.dart';
import 'package:ttfc_app/widget/button.dart';

class BottomBarWidget {
  static BottomAppBar temporaryBottomBar() {
    return BottomAppBar(
      child: ButtonWidget.SubmitButton(
        'Request Quotation',
        onTap: () {},
      ),
    );
  }
}