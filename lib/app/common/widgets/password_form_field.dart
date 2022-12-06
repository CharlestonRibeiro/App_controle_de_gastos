import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {

  final String passwordFormFieldText;
  final TextEditingController? passwordFormFieldController;
  final String? Function(String?)? passwordFormFieldValidator;
  final TextInputType? passwordFormFieldKeyboardType;
  final String? passwordFormFieldHelperText;
  
  const PasswordFormField(
      {Key? key,
       required this.passwordFormFieldText,
       this.passwordFormFieldController,
       this.passwordFormFieldValidator, 
       this.passwordFormFieldKeyboardType, 
       this.passwordFormFieldHelperText,
       })
      : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      formFieldText: widget.passwordFormFieldText,
      formFieldObscureText: _isHidden,
      formFieldController: widget.passwordFormFieldController,
      formFieldKeyboardType: widget.passwordFormFieldKeyboardType,
      formFieldValidator: widget.passwordFormFieldValidator,
      formFieldHelperText: widget.passwordFormFieldHelperText,
     

      
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
