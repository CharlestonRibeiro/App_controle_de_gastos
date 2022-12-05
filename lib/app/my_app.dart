import 'package:controle_de_mercado_vesao_local/pages/home_page/home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/login_page/login_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/account_recovery_page/account_recovery_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/sing_up_page/sign_up_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginPage.routeLoginPage: (_) => const LoginPage(),
        SplashPage.routSplashPage:(_) => const SplashPage(),
        HomePage.home: (_) => const HomePage(),        
        AccountRecoveryPage.recover: (_) => const AccountRecoveryPage(),
        SignUpPage.routeSignUpPage: (_) => const SignUpPage(),
      },
    );
  }
}
