import 'package:controle_de_mercado_vesao_local/pages/home_page/home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/login_page/login_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/recover_password_page/recover_password_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/singUp_page/signUp_page.dart';
import 'package:controle_de_mercado_vesao_local/routes/routes.dart';
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
        Routes.home: (_) => const HomePage(),
        Routes.login: (_) => const LoginPage(),
        Routes.recover: (_) => const RecoverPasswordPage(),
        Routes.signUp: (_) => const SignUpPage(),
      },
    );
  }
}
