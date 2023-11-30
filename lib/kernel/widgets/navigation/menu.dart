import 'package:flutter/material.dart';
import 'package:learning_app_a/config/navigation/home_stack.dart';
import 'package:learning_app_a/config/navigation/news_stack.dart';
import 'package:learning_app_a/kernel/widgets/navigation/Bottom_navigation_tab.dart';
import 'package:learning_app_a/modules/auth/adapters/screens/profile.dart';
//import 'package:learning_app_a/modules/home/adapters/screens/home.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/shop.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children:  [HomeStack(), Profile(), Shop(), NewsStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
