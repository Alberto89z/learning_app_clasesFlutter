import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';

class ContainerShopCard extends StatelessWidget {
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  final double price;
  const ContainerShopCard(
      {super.key,
      required this.title,
      required this.description,
      required this.initialRating,
      required this.imageUri,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              imageUri,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 8),
             SizedBox(
              width: 160,
              child: Column(
                children: [
                  SizedBox(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\$$price',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorsApp.successColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 8, color: Colors.black),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Eliminar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
