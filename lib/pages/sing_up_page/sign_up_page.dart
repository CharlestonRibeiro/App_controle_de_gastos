import 'package:controle_de_mercado_vesao_local/app/controllers/custom_form_field_validator.dart';
import 'package:controle_de_mercado_vesao_local/app/controllers/sign_up_controller.dart';
import 'package:controle_de_mercado_vesao_local/app/controllers/signup_state_controller.dart';
import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/components/custom_form_field.dart';
import 'package:controle_de_mercado_vesao_local/components/error_dialog.dart';
import 'package:controle_de_mercado_vesao_local/components/header_logo.dart';
import 'package:controle_de_mercado_vesao_local/components/password_form_field.dart';
import 'package:controle_de_mercado_vesao_local/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static const routeSignUpPage = '/sign-up-page';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _passwordController = TextEditingController();
  final _controller = SignUpController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        if (_controller.state is SignUpLoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (_controller.state is SignUpSucessState) {
          Navigator.of(context).pushReplacementNamed(HomePage.home);
        }
        if (_controller.state is SignUpErrorState) {
          errorDialog(context, "Erro ao cadastrar", HomePage.home);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderLogo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Card(
              color: AppColors.lightgreen,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Form(
                key: _formKey, // para acessar prop e metodo internos
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 25,
                      ),
                      const Center(
                        child: Text(
                          'Criar uma nova conta',
                          style: TextStyle(
                            fontSize: 28,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const CustomFormField(
                          formFieldValidator:
                              CustomFormFieldValidator.validateName,
                          formFieldText: 'Nome completo'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const CustomFormField(
                          formFieldValidator:
                              CustomFormFieldValidator.validateEmail,
                          formFieldText: 'E-mail'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      PasswordFormField(
                        passwordFormField: 'Senha',
                        passwordValidator:
                            CustomFormFieldValidator.validatePassword,
                        passwordController: _passwordController,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      PasswordFormField(
                        passwordFormField: 'Confirme sua senha',
                        passwordValidator: (value) =>
                            CustomFormFieldValidator.confirmValidatePassword(
                                _passwordController.text, value),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Center(
                        child: Text(
                          'Ao criar uma conta você confirma que concorda com \nos nossos Termos de Serviço e Política de Privacidade.',
                          style:
                              TextStyle(fontSize: 13, color: AppColors.linear),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                onPressed: () {
                  final valid = _formKey.currentState != null &&
                      _formKey.currentState!.validate();
                  if (valid) {
                    _controller.doSignUp();
                  } else {}
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                  backgroundColor:
                      const MaterialStatePropertyAll(AppColors.green),
                ),
                child: const Text(
                  ' ENTRAR',
                  style: TextStyle(fontSize: 25, color: AppColors.linear),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}