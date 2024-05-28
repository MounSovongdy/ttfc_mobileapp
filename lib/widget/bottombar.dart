import 'package:flutter/material.dart';
import 'package:ttfc_app/widget/button.dart';

class BottomBarWidget {
  static BottomAppBar temporaryBottomBar({
    required onTap,
}) {
    return BottomAppBar(
      child: ButtonWidget.submitButton(
        'Request Quotation',
        onTap: onTap,
      ),
    );
  }
}