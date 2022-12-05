import 'package:controle_de_mercado_vesao_local/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AccountRecoveryPage extends StatelessWidget {
  const AccountRecoveryPage({super.key});

  static const recover = '/recover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: const Text('Racuperar senha'),
        backgroundColor: AppColors.lightgreen,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text(
                      'Recuperar sua senha',
                      style: TextStyle(
                        fontSize: 28,
                        color: AppColors.white,
                      ),
                    )),
                    const SizedBox(
                      height: 25,
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
                              'RECUPERAR',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

        ],
      ),
    );
  }
}
