import 'package:controle_de_mercado_vesao_local/components/custom_form_field.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final String passwordFormField;
  final TextEditingController? passwordController;
  final String? Function(String?)? passwordValidator;

  const PasswordFormField(
      {Key? key,
      required this.passwordFormField,
      this.passwordController,
      this.passwordValidator})
      : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      formFieldText: widget.passwordFormField,
      formFieldObscureText: _isHidden,
      formFieldSuffixIcon: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {
          setState(
            () {
              _isHidden = !_isHidden;
            },
          );
        },
        child: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
