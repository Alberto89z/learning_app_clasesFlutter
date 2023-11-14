import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';
import 'package:learning_app_a/kernel/validations/validations_app.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _fullName = TextEditingController(text: "");
  final TextEditingController _email = TextEditingController(text: "");
  final TextEditingController _edad = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Creacion de cuenta"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 300,
                height: 100,
              ),
            ),
            Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  _isButtonDisabled = !_formKey.currentState!.validate();
                });
              },
              child: Column(
                children: <Container>[
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Nombre completo:*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obligatorio';
                        } else {
                          return null;
                        }
                      },
                      controller: _fullName,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Correo electrónico:*"),
                      validator: (value) {
                        RegExp regex = RegExp(ValidationApp.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "Edad:*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      controller: _edad,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: _isButtonDisabled
                          ? null
                          : () {
                              log("$_fullName $_email $_edad");
                            },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50),
                          backgroundColor: ColorsApp.successColor),
                      child: const Text("Crear cuenta"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
