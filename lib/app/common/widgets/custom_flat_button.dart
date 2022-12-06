// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';

class CustomFlatButton extends StatefulWidget {
  final String customButtonText;
  final Function() customButtonOnPressed;
  final Color customColor;
  final Color? customColorImage;
  final Color customColorText;
  final double customWidth;
  final double customHeight;
  final double customFontSize;
  final String? customImage;

  const CustomFlatButton({
    Key? key,
    required this.customButtonText,
    required this.customButtonOnPressed,
    required this.customColor,
    required this.customWidth,
    required this.customHeight,
    required this.customFontSize,   
    required this.customColorText, 
    this.customImage,    
    this.customColorImage, 
  }) : super(key: key);

  @override
  State<CustomFlatButton> createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.customColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: widget.customButtonOnPressed,
        child: Container(
          width: MediaQuery.of(context).size.width * widget.customWidth,
          height: MediaQuery.of(context).size.height * widget.customHeight,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: widget.customImage != null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Image.asset(
                    widget.customImage!,
                    height: 24,
                    color: widget.customColorImage,
                    alignment: Alignment.center,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
              Text(
                widget.customButtonText,
                style: TextStyle(
                    fontSize: widget.customFontSize, color: AppColors.linear),      
              ),
            ],
          )
          :
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [              
              Text(
                widget.customButtonText,
                style: TextStyle(
                    fontSize: widget.customFontSize, 
                    color: widget.customColorText),      
              ),
            ],
          )

        ),
      ),
    );
  }
}

