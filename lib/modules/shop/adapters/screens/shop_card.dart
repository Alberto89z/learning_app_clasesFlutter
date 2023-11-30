import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/widgets/container_shop_card.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rowArgs = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rowArgs as Map<String, dynamic>?) ?? {};
    final title = arguments["title"] ?? '';
    final description = arguments["description"] ?? '';
    final price = arguments["price"] ?? 0.0;
    final imageUri = arguments["imageUri"] ?? 'assets/images/logo2.jpg';
    List items = [
      {
        'title': title,
        'description': description,
        'imageUri': imageUri,
        'price': price
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContainerShopCard(
          title: items[0]['title'],
          description: description,
          imageUri: imageUri,
          price: price,
          initialRating: 0,
        ),
      ),
    );
  }
}
