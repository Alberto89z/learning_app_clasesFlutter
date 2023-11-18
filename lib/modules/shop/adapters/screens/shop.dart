import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'title': 'Sony Xperia I',
      'description': 'Nuevo celular sony con mejor cámara y rendimiento',
      'price': 750.0,
      'imageUri': 'assets/images/xperiaIV.jpg',
      'initialRating': 4.5,
    };
    final Map<String, dynamic> item2 = {
      'title': 'Playstation',
      'description': 'Primer consola lanzada por Sony en el año 1994',
      'price': 350.0,
      'imageUri': 'assets/images/ps1.jpg',
      'initialRating': 5.0,
    };
    final Map<String, dynamic> item3 = {
      'title': 'Ps vita',
      'description': 'Segunda consola portatil lanzada por Sony.',
      'price': 250.0,
      'imageUri': 'assets/images/psvita.jpg',
      'initialRating': 5.0,
    };
    final List items = [item, item2, item3];
    return Scaffold(
      appBar: AppBar(
        title: const Text('El frasco de Bowzer - Tienda'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/shop/shop-cart');
              },
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 5,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(
          items.length,
          (index) {
            return ContainerShop(
              title: items[index]['title'],
              description: items[index]['description'],
              initialRating: items[index]['initialRating'],
              imageUri: items[index]['imageUri'],
              price: items[index]['price'],
            );
          },
        ),
      ),
    );
  }
}
