// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:learning_app_a/main.dart';

class Splash extends StatefulWidget {
  final String title;
  const Splash({super.key, required this.title});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    //Se ejecuta despues de habe renderizado el componente/widget
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => {
      Navigator.pushReplacementNamed(context, '/menu')
    });
  }

//required para que el parametro sea obligatorio
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: 200,
              height: 150,
            ),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}
