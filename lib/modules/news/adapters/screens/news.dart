import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/kernel/widgets/custom/custom_carousel.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorsApp.primaryColor,
          title: const Text(
            'Noticias',
          )),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: const CustomCarousel(
          carouselHeight: 280,
          itemList: [FirstSection(), SecondSection(), ThirdSection()],
        ),
      ),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/logo.jpg',
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Regresa el aire acondicionado',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                  'Despues de mucho tiempo ya regresó el aire acondicionado en CA2 -Docencia 4'),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/logo2.jpg',
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Se nos fue una bella dama',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                  'Finalmente, lo lograron, lo rompieron, hicieron llora a alguien que solo quería sonreir .|.'),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/logo3.png',
            width: widthImage,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Un mamut Chiquitito',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                  'Queria volar, probaba y probaba y no podía volar. Una palomita, su amiga, lo quzo ayudar, y de un 5to piso, le hizo saltar.'),
            ),
          ),
        ],
      ),
    );
  }
}
