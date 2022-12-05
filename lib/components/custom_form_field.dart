import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String formFieldText;
  final Widget? formFieldSuffixIcon;
  final bool? formFieldObscureText;
  final TextEditingController? formFieldController;
  final String? Function(String?)? formFieldValidator;

  const CustomFormField(
      {super.key,
      required this.formFieldText,
      this.formFieldSuffixIcon,
      this.formFieldObscureText,
      this.formFieldController,
      this.formFieldValidator});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.formFieldController,
      validator: widget.formFieldValidator,
      maxLines: 1,
      obscureText: widget.formFieldObscureText ?? false,
      decoration: InputDecoration(
        hintText: widget.formFieldText,
        suffixIcon: widget.formFieldSuffixIcon,
        errorStyle: const TextStyle(
            color: AppColors.orange, fontWeight: FontWeight.bold),
        hintStyle: const TextStyle(color: AppColors.linear),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.orange, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.errorColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.linear, width: 2),
        ),
      ),
    );
  }
}