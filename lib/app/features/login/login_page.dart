import 'package:controle_de_mercado_vesao_local/app/common/constants/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/app/common/constants/app_images.dart';
import 'package:controle_de_mercado_vesao_local/app/common/utils/custom_form_field_validator.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/header_logo.dart';
import 'package:controle_de_mercado_vesao_local/app/features/login/login_controller.dart';
import 'package:controle_de_mercado_vesao_local/app/features/login/login_state.dart';
import 'package:controle_de_mercado_vesao_local/app/features/sign_up/sign_up_page.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_flat_button.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/custom_form_field.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/error_dialog.dart';
import 'package:controle_de_mercado_vesao_local/app/common/widgets/password_form_field.dart';
import 'package:controle_de_mercado_vesao_local/app/features/account_recovery/account_recovery_page.dart';
import 'package:controle_de_mercado_vesao_local/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routeLoginPage = '/login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final _controller = LoginController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        if (_controller.loginState is LoginLoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (_controller.loginState is LoginSuccessState) {
          Navigator.of(context).pushReplacementNamed(HomePage.home);
        }
        if (_controller.loginState is LoginErrorState) {
          errorDialog(context, "Erro ao logar", LoginPage.routeLoginPage);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderLogo(),
            SizedBox(height: (MediaQuery.of(context).size.height) * 0.04),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    const CustomFormField(
                        formFieldText: "E-MAIL",
                        formFieldValidator:
                            CustomFormFieldValidator.validateEmail),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.04),
                    const PasswordFormField(
                      passwordFormField: 'SENHA',
                      passwordValidator:
                          CustomFormFieldValidator.validatePassword,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    CustomFlatButton(
                      customButtonText: 'ENTRAR',
                      customColor:  AppColors.primaryDark,
                      customWidth: 0.8, 
                      customHeight: 0.06,
                      customFontSize: 25,
                      customButtonOnPressed: () {
                        final valid = _formKey.currentState != null &&
                            _formKey.currentState!.validate();
                        if (valid) {
                          _controller.attemptLogin();
                        }
                      }, 
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.height * 0.02),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AccountRecoveryPage.recover);
                      },
                      child: const Center(
                          child: Text(
                        'Esqueci minha senha',
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                 
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    
                    CustomFlatButton(
                      customButtonText: 'ENTRAR COM GOOGLE', 
                      customButtonOnPressed: (){}, 
                      customColor: AppColors.textMediumGray, 
                      customWidth: 0.9,
                      customHeight: 0.06, 
                      customFontSize: 20,
                      customImage: AppImages.google,
                      ),
                  
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  
                    CustomFlatButton(
                      customButtonText: 'ENTRAR COM MICROSOFT', 
                      customButtonOnPressed: (){}, 
                      customColor: AppColors.textMediumGray, 
                      customWidth: 0.9,
                      customHeight: 0.06, 
                      customFontSize: 20,
                      customImage: AppImages.microsoft,
                      ),
                     
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02), 

                    CustomFlatButton(
                      customButtonText: 'CADASTRAR NOVA CONTA',
                      customColor:  AppColors.textMediumGray,
                      customWidth: 0.9, 
                      customHeight: 0.06,
                      customFontSize: 20,
                      customButtonOnPressed: () {
                       Navigator.of(context)
                              .pushNamed(SignUpPage.routeSignUpPage);
                      },
                    ),
                  
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
