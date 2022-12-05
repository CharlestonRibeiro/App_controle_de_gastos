import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/app/common/utils/custom_form_field_validator.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_flat_button.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_form_field.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/header_logo.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/password_form_field.dart';
import 'package:flutter/material.dart';

class AccountRecoveryPage extends StatelessWidget {
  const AccountRecoveryPage({super.key});

  static const recover = '/recover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const HeaderLogo(),
          
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          
          Card(
            color: AppColors.lightgreen,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Form(
              child: ListView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  children: const <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                        child: Text(
                      'Recuperar sua senha',
                      style: TextStyle(
                        fontSize: 28,
                        color: AppColors.white,
                      ),
                    )),
                    SizedBox(
                      height: 25,
                    ),
                    CustomFormField(
                        formFieldValidator:
                            CustomFormFieldValidator.validateEmail,
                        formFieldText: 'E-mail'),
                  ]),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          CustomFlatButton(
              customButtonText: 'RECUPERAR',
              customButtonOnPressed: () {},
              customColor: AppColors.green,
              customWidth: 0.8,
              customHeight: 0.08,
              customFontSize: 25),
        ],
      ),
    );
  }
}
