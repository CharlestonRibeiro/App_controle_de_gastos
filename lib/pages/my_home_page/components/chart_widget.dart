import 'package:controle_de_mercado_vesao_local/models/transaction.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/components/chart_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartWidget extends StatelessWidget {
  final List<Transaction> recentTransactions;
  double get _weekTotal => recentTransactions.fold(0.0, (p, e) => p + e.value);

  const ChartWidget(this.recentTransactions, {Key? key}) : super(key: key);

  List<Map<String, dynamic>> get _groupedTransactions {
    return List.generate(7, (index) {
      final date = DateTime.now().subtract(Duration(days: index));
      final weekDay = DateFormat.E().format(date)[0];

      var value = 0.0;
      for (var transaction in recentTransactions) {
        final sameDay = transaction.date.day == date.day;
        final sameMonth = transaction.date.month == date.month;
        final sameYear = transaction.date.year == date.year;

        if (sameDay && sameMonth && sameYear) {
          value += transaction.value;
        }
      }
      return {
        'day': weekDay,
        'value': value,
        'percent': _weekTotal == 0 ? 0.0 : value / _weekTotal,
      };
    }).reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    _groupedTransactions;

    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _groupedTransactions.map((e) {
            return Expanded(
              child: ChartBarWidget(
                label: e['day'],
                value: e['value'],
                percent: e['percent'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
