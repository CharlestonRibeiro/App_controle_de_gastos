// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            child: ListView(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                children: <Widget>[
                  TextFormField(
                      decoration: const InputDecoration(hintText: 'Nome'),
                      keyboardType: TextInputType.name,
                      validator: null),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(hintText: 'E-mail'),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      validator: null),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Senha'),
                    autocorrect: false,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      decoration:
                      const InputDecoration(hintText: 'Repita a Senha'),
                      autocorrect: false,
                      obscureText: true,
                      validator: null),
                  const SizedBox(
                    height: 16,
                  ),
                  const ElevatedButton(
                      onPressed: null, child: Text('Cadastro')),
                ]),
          ),
        ),
      ),
    );
  }
}
