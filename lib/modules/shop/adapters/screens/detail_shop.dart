import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';

class DetailShop extends StatelessWidget {
  const DetailShop({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rowArgs = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rowArgs as Map<String, dynamic>?) ?? {};
    final title = arguments["text"] ?? '';
    final description = arguments["description"] ?? '';
    final initialRating = arguments["initialRating"] ?? 0.0;
    final imageUri = arguments["imageUri"] ?? 'assets/images/logo2.jpg';
    double widthImage = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset(
            imageUri,
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  width: 120.0,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {
                    // ignore: avoid_print
                    print(rating);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
