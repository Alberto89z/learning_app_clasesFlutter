import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});
  

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'title': 'Sony Xoeria I',
      'description': 'Nuevo celular sony con mejor cámara y rendimiento',
      'imageUri': 'https://picsum.photos/200/300',
      'initialRating': 4.5,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('El frasco de Bowzer'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 5,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: const <Widget>[
          ContainerShop(
            title: '',
            description: '',
            initialRating: 3,
            imageUri: 'assets/images/logo2.jpg',
          ),
          ContainerShop(
            title: '',
            description: '',
            initialRating: 3,
            imageUri: 'assets/images/logo2.jpg',
          ),
          ContainerShop(
            title: '',
            description: '',
            initialRating: 3,
            imageUri: 'assets/images/logo2.jpg',
          ),
          ContainerShop(
            title: '',
            description: '',
            initialRating: 3,
            imageUri: 'assets/images/logo2.jpg',
          ),
        ],
      ),
    );
  }
}
