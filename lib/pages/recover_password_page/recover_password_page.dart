import 'package:flutter/material.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({super.key});

  static const recover = '/recover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Racuperar senha'),
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
                    const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(hintText: 'Digite seu E-mail'),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      validator: null),
                  const SizedBox(
                    height: 16,
                  ),

                  const ElevatedButton(
                      onPressed: null, child: Text('Recuperar')),
                 
                ]),
          ),
        ),
      ),
    );
  }
}
