import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';

class BottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavigationTab(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        BottomNavigationBarItem(
            icon: Icon(Icons.store), label: 'Tienda'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias'),
      ],
      currentIndex: selectedIndex,
      unselectedItemColor: ColorsApp.primaryColor,
      selectedItemColor: ColorsApp.successColor,
      onTap: onItemTapped,
    );
  }
}
