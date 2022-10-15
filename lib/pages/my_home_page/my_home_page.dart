import 'package:controle_de_mercado_vesao_local/mocks/moks_purchases.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  static const myHome = '/myHome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas em mercado'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          ...MOCK_PURCHASES.map((e) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${e.value.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.title,
                        style:
                            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(e.date),
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  )
                ],
              ),
            );
          })
        ]),
      ),
    );
  }
}
