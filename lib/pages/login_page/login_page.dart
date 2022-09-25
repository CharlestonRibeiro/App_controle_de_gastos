import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
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
                      validator: null
                      ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Senha',
                    ),
                    obscureText: true,
                    autocorrect: false,
                    validator: null
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ElevatedButton(
                      onPressed: null,
                      child: Text('Entrar')),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: const Center(child: Text('Esqueci minha senha')),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
