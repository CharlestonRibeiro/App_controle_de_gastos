import 'package:controle_de_mercado_vesao_local/pages/home_page/home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/login_page/login_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/my_home_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/recover_password_page/recover_password_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/singUp_page/signUp_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 2200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SplashPage.splash:(_) => const SplashPage(),
        HomePage.home: (_) => const HomePage(),
        LoginPage.login: (_) => const LoginPage(),
        RecoverPasswordPage.recover: (_) => const RecoverPasswordPage(),
        SignUpPage.signUp: (_) => const SignUpPage(),
        MyHomePage.myHome: (_) => const MyHomePage(),
      },
    );
  }
}
