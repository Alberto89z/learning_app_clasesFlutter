import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/widgets/navigation/menu.dart';
import 'package:learning_app_a/kernel/widgets/splash/Splash.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/shop.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(title: 'Loading mamahuevo'),
        '/menu': (context) => const Menu(),
        '/shop': (context) => const Shop(),
      },
    );
  }
}


//flutter clean - Borrar las carpetar/dependencias/public
//flutter pub get -Descarga todas las dependencias