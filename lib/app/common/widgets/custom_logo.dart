import 'package:controle_de_mercado_vesao_local/app/common/constants/app_images.dart';
import 'package:controle_de_mercado_vesao_local/app/common/constants/text_styles/app_text_styles_dark.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Image.asset(AppImages.porkin,
                  height: MediaQuery.of(context).size.height * 0.40),
              Text(
                "Porkin.io",
                style: AppTextStylesDark.headline3,
              ),
            ],
          );
  }
}

