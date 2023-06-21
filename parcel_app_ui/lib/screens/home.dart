import 'package:flutter/material.dart';
import 'package:parcel_app_ui/components/bottom_nav.dart';
import 'package:parcel_app_ui/constant/constant.dart';
import 'package:parcel_app_ui/screens/cart.dart';
import 'package:parcel_app_ui/screens/shop.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    Cart(),
    Shop(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectIndex],
    );
  }
}
