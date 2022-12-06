import 'dart:ffi';

import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String formFieldText;

  final Widget? formFieldSuffixIcon;
  final bool? formFieldObscureText;
  final TextEditingController? formFieldController;
  final String? Function(String?)? formFieldValidator;
  final TextInputType? formFieldKeyboardType;
  final String? formFieldHelperText;

  const CustomFormField({
    super.key,
    required this.formFieldText,
    this.formFieldSuffixIcon,
    this.formFieldObscureText,
    this.formFieldController,
    this.formFieldValidator,
    this.formFieldKeyboardType,
    this.formFieldHelperText,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: AppColors.white));

  String? _customHelperText;

  @override
  void initState() {
    super.initState();
    _customHelperText = widget.formFieldHelperText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        if (value.length == 1) {
          setState(() {
            _customHelperText = null;
          });
        } else if (value.isEmpty) {
          setState(() {
            _customHelperText = widget.formFieldHelperText;
          });
        }
      },
      controller: widget.formFieldController,
      validator: widget.formFieldValidator,
      keyboardType: widget.formFieldKeyboardType,
      maxLines: 1,
      obscureText: widget.formFieldObscureText ?? false,
      decoration: InputDecoration(
        helperText: _customHelperText,
        helperMaxLines: 3,
        hintText: widget.formFieldText,
        suffixIcon: widget.formFieldSuffixIcon,
        hintStyle: const TextStyle(color: AppColors.linear),
        focusedBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.orange, width: 2),
        ),
        errorBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.errorColor, width: 2),
        ),
        enabledBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.linear, width: 2),
        ),
      ),
    );
  }
}
