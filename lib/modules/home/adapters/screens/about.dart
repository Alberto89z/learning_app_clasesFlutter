import 'package:flutter/material.dart';
import 'package:learning_app_a/modules/home/adapters/screens/widgets/first_form.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //appBar: AppBar(title: const Text("Acerca de nosotros")),
        body: FirstForm());
  }
}
