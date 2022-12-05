import 'package:controle_de_mercado_vesao_local/app/common/themes/default_theme.dart';
import 'package:controle_de_mercado_vesao_local/app/features/sign_up/sign_up_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/home_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/login/login_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/account_recovery/account_recovery_page.dart';
import 'package:controle_de_mercado_vesao_local/app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: defaultTheme,
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
