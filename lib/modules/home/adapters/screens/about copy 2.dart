import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Acerca de nosotros")),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 32, left: 16),
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: ColorsApp.primaryColor,
            child: const Text("Hola, soy Alberto"),
          ),
          Container(
            padding: const EdgeInsets.only(top: 32, left: 16),
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: ColorsApp.primaryColor,
            child: const Text("Hola, soy Alberto"),
          ),
          Container(
            color: ColorsApp.primaryColor,
            child: const Text("Hola mundo"),
          )
        ],
      ),
    );
  }
}
