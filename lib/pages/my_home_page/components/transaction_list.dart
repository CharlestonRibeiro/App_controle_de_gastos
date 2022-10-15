import 'package:controle_de_mercado_vesao_local/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String id) onRemove;

  const TransactionList(
    this.transactions, {
    required this.onRemove,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (_, i) {
          final transaction = transactions[i];
          final primaryColor = Theme.of(context).primaryColor;

          final formattedValue = 'R\$ ${transaction.value.toStringAsFixed(2)}';
          final formattedDate = DateFormat('d MMM y').format(transaction.date);

          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: FittedBox(
                    child: Text(
                      formattedValue,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(transaction.title),
              subtitle: Text(formattedDate),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.redAccent.shade200,
                onPressed: () => onRemove(transaction.id),
              ),
            ),
          );
        });
  }
}
