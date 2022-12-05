import 'package:controle_de_mercado_vesao_local/app/features/sign_up/sign_up_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/login/login_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/account_recovery/account_recovery_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/splash/splash_page.dart';
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
