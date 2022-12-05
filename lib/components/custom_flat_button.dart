import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatefulWidget {
  final String customButtonText;
  final Function() customButtonOnPressed;
  const CustomFlatButton({
    Key? key,
    required this.customButtonText,
    required this.customButtonOnPressed,
  }) : super(key: key);

  @override
  State<CustomFlatButton> createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primaryDark,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: widget.customButtonOnPressed,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.06,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            widget.customButtonText,
            style: const TextStyle(fontSize: 25, color: AppColors.linear),
          ),
        ),
      ),
    );
  }
}
