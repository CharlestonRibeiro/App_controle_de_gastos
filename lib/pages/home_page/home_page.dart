import 'package:controle_de_mercado_vesao_local/pages/login_page/login_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/account_recovery_page/account_recovery_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/sing_up_page/sign_up_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const home = '/';

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
                  Navigator.of(context).pushNamed(LoginPage.routeLoginPage);
                },
                child: const Text('login_page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignUpPage.routeSignUpPage);
                },
                child: const Text('signUp_page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AccountRecoveryPage.recover);
                },
                child: const Text('recover_password_page')),
          
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SplashPage.routSplashPage);
                },
                child: const Text('splash_page')),
          ],
        ),
      ),
    );
  }
}
