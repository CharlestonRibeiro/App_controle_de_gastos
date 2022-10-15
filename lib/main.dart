import 'package:controle_de_mercado_vesao_local/pages/home_page/home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/login_page/login_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/my_home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/recover_password_page/recover_password_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/singUp_page/signUp_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

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
        HomePage.home: (_) => const HomePage(),
        LoginPage.login: (_) => const LoginPage(),
        RecoverPasswordPage.recover: (_) => const RecoverPasswordPage(),
        SignUpPage.signUp: (_) => const SignUpPage(),
        MyHomePage.myHome: (_) => const MyHomePage(),
      },
    );
  }
}
