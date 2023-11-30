import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/modules/shop/adapters/screens/shop.dart';

class ContainerShop extends StatelessWidget {
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  final double price;

  const ContainerShop(
      {super.key,
      required this.title,
      required this.description,
      required this.initialRating,
      required this.imageUri,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.asset(
            imageUri,
            width: widthImage,
            height: 60,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 64,
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      '\$$price',
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    RatingBar.builder(
                      initialRating: initialRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 8,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.settings_accessibility,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // ignore: avoid_print
                        print(rating);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                description,
                style: const TextStyle(color: Colors.black54, fontSize: 9),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              enviarListaAShopDetail(context);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: ColorsApp.successColor,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text("Ver más"),
          )
        ],
      ),
    );
  }
}

void enviarListaAShopDetail(BuildContext context) {
}
