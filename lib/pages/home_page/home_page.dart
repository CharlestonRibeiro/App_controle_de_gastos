import 'package:controle_de_mercado_vesao_local/routes/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home para desenvolvimento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.login);
                },
                child: const Text('login_page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.signUp);
                },
                child: const Text('signUp_page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.recover);
                },
                child: const Text('recover_password_page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.myHome);
                },
                child: const Text('myHome')),
          ],
        ),
      ),
    );
  }
}
