import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';
import 'package:ttfc_app/widget/appbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  String _searchText = "";

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        _searchText = searchController.text;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.additionalAppbar(context, 'Search'),
      body: buildBoby(context),
    );
  }

  Widget buildBoby(context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: <Widget>[
          TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Enter search',
              prefixIcon: const Icon(Icons.search),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultCircular),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultCircular),
                borderSide: const BorderSide(
                  color: mainColor,
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: ListView(
              children: _getSearchResults(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getSearchResults() {
    List<String> allItems = [
      'Apple',
      'Banana',
      'Orange',
      'Mango',
      'Pineapple',
      'Grapes',
      'Watermelon'
    ];
    List<String> filteredItems = allItems
        .where((item) => item.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return filteredItems.map((item) => ListTile(title: Text(item))).toList();
  }
}
