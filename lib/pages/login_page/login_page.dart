import 'package:controle_de_mercado_vesao_local/themes/app_colors.dart';
import 'package:controle_de_mercado_vesao_local/themes/app_images.dart';
import 'package:controle_de_mercado_vesao_local/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const login = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.lightgreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.piggy,
                      height: 200,
                      width: 200,
                    ),
                    Text("Porkin.io", style: MyTextStyles.titleHome),
                  ],
                )),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Form(
                child: ListView(
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    children: <Widget>[
                      TextFormField(
                        controller: null,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Nome',
                            
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: AppColors.white))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: null,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Senha',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(AppColors.green),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'ENTRAR',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
      
                      const SizedBox(
                        height: 15,
                      ),
                      
                       ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(AppColors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'ENTRAR COM GOOGLE',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.orange
                            ),
                          ),
                        ),
                      ),
      
      
                      const SizedBox(
                        height: 15,
                      ),
      
      
                       ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(AppColors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'CADASTRAR NOVA CONTA',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.orange
                            ),
                          ),
                        ),
                      ),
      
      
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
