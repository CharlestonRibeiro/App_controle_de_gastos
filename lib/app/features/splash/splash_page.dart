import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/app/common/constants/text_styles/app_text_styles_dark.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_logo.dart';
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
              const CustomLogo(),
                       
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
