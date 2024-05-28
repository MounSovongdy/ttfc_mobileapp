import 'package:flutter/material.dart';
import 'package:ttfc_app/screen/account_screen/account.dart';
import 'package:ttfc_app/screen/home_screen/home.dart';
import 'package:ttfc_app/screen/quote_screen/qoutation.dart';
import 'package:ttfc_app/screen/search_screen/search.dart';
import 'package:ttfc_app/style/constant.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final kTabPages = <Widget>[
      const HomeScreen(),
      const SearchScreen(),
      const QuotationScreen(),
      const AccountScreen(),
    ];
    final kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      const BottomNavigationBarItem(icon: Icon(Icons.request_quote_rounded), label: 'Quotation'),
      const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
    ];
    assert(kTabPages.length == kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      backgroundColor: backgroudAppColor,
      selectedItemColor: mainColor,
      selectedLabelStyle: const TextStyle(
        fontSize: fontDiscription,
        fontWeight: FontWeight.bold
      ),
      unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold
      ),
      items: kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}