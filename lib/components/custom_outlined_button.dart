import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String customImage;
  final String customText;

  const CustomOutlinedButton(
      {required this.customImage, required this.customText, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              const BorderSide(color: AppColors.orange)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              customImage,
              height: 24,
              color: AppColors.orange,
              alignment: Alignment.center,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
            ),
            Text(
              customText,
              style: const TextStyle(fontSize: 18, color: AppColors.orange),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
