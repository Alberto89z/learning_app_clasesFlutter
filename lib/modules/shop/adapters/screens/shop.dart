import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatefulWidget {
  Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Map<String, dynamic>> items = [];
  List<Map<String, dynamic>> itemsCarrito = [];
  bool hasData = false;

  void traerDatos() {
    items = [
      {
        'title': 'Sony Xperia I',
        'description': 'Nuevo celular sony con mejor cámara y rendimiento',
        'price': 750.0,
        'imageUri': 'assets/images/xperiaIV.jpg',
        'initialRating': 4.5,
      },
      {
        'title': 'Playstation',
        'description': 'Primer consola lanzada por Sony en el año 1994',
        'price': 350.0,
        'imageUri': 'assets/images/ps1.jpg',
        'initialRating': 5.0,
      },
      {
        'title': 'Ps vita',
        'description': 'Segunda consola portatil lanzada por Sony.',
        'price': 250.0,
        'imageUri': 'assets/images/psvita.jpg',
        'initialRating': 5.0,
      }
    ];
  }

  validarItem(String name) {
    for (var item in items) {
      if (item['name'] == name) {
        itemsCarrito.add(item);
        items.remove(item);
      }
    }
    setState(() {
      items = items;
    });
  }

  @override
  void initState() {
    super.initState();
    traerDatos();
    setState(() {
      hasData = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dynamic rowArgs = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rowArgs as Map<String, dynamic>?) ?? {};
    final title = arguments["text"] ?? '';
    validarItem(title);
    return Scaffold(
      appBar: AppBar(
        title: const Text('El frasco de Bowzer - Tienda'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/shop/shop-cart',
                    arguments: {'item': itemsCarrito});
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
      body: hasData
          ? GridView.count(
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
            )
          : const CircularProgressIndicator(),
    );
  }

  void enviarListaAShopDetail(BuildContext context) {
    Navigator.pushNamed(context, '/shop/shop-detail', arguments: items);
  }
}
