// ignore_for_file: file_names

import 'package:controle_de_mercado_vesao_local/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const signUp = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
         backgroundColor: AppColors.lightgreen,
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(          
          children:[
            const SizedBox(height: 40,),
            Card(
              color:AppColors.lightgreen,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Form(
                child: ListView(
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    children: <Widget>[

                    const SizedBox(height: 25,), 

                    const Center(
                      child: Text('Criar uma nova conta', 
                      style: TextStyle(
                        fontSize: 28,
                        color: AppColors.white,

                        ),
                      )
                     ),  

                     const SizedBox(height: 25,), 

                     TextFormField(
                          controller: null,
                          maxLines: null,
                          decoration: InputDecoration(
                              hintText: 'Nome completo',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                 )),
                        ),
                      const SizedBox(
                        height: 16,
                      ),
                         TextFormField(
                          controller: null,
                          maxLines: null,
                          decoration: InputDecoration(
                              hintText: 'E-mail',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                 )),
                        ),
                      const SizedBox(
                        height: 16,
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
                        height: 16,
                      ),
                         TextFormField(
                          controller: null,
                          maxLines: null,
                          decoration: InputDecoration(
                              hintText: 'Confirme a senha',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                 )),
                        ),
                      const SizedBox(
                        height: 16,
                      ),
                     
                    ]),
              ),
            ),
      
            const SizedBox(height: 20,),
          
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
                            padding: EdgeInsets.only(right: 100, left: 100, bottom: 15, top: 15),
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
      
          
          ],                        
        ),
      ),
    );
  }
}
