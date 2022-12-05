import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/app/core/themes/app_images.dart';
import 'package:controle_de_mercado_vesao_local/app/core/themes/text_styles/app_text_styles_dark.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routSplashPage = '/splash-page';

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  // TODO: SPRINT 3: IMPLEMENTAR INICIO DA NAVEGAÇÃO DO APP NA SPLASH-SCREEN
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 4)).then((value) {
  //     Navigator.of(context).pushReplacementNamed(LoginPage.login);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.porkin, height: 320),
              Text(
                "Porkin.io",
                style: AppTextStylesDark.headline3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                "Bem-vindo",
                style: AppTextStylesDark.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
