import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBoby(context),
    );
  }
  Widget buildBoby (context) {
    return Center(child: Icon(Icons.search, size: 64.0, color: Colors.teal),);
  }
}
