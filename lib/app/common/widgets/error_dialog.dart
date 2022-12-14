import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

Future<T> errorDialog<T>(
    BuildContext context, String customErrorMessage, String route) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        textAlign: TextAlign.center,
        customErrorMessage,
        style: const TextStyle(fontSize: 16, color: AppColors.backgroundDark),
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).pushReplacementNamed(route),
            child: const Text(
              "Tente Novamente",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.backgroundDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

//TODO PERGUNTA O QUE É PARA A BIA