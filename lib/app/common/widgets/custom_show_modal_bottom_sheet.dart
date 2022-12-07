import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

Future<void> customShowModalBottomSheet(
    BuildContext context, String customErrorMessage, String route) {
  return showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38.0), topRight: Radius.circular(38.0))),
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38.0),
                topRight: Radius.circular(38.0)),
          ),
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  customErrorMessage,
                  style: const TextStyle(
                      fontSize: 16, color: AppColors.backgroundDark),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0,
                    ),
                    child: ElevatedButton(
                      //TODO TROCA PELO customFlatButton
                      child: const Text('Tentar novamente'),
                      onPressed: () => Navigator.of(context).pushReplacementNamed(route),
                    ))
              ],
            ),
          ),
        );
      });
}
//TODO CHECAR COM PESSOAL SE SEGUE ESSE MODELO, SE SIM AJUSTAR IU  