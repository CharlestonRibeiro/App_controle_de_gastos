import 'dart:math';
import 'package:controle_de_mercado_vesao_local/models/transaction.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/components/chart_widget.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/components/transaction_form.dart';
import 'package:controle_de_mercado_vesao_local/pages/my_home_page/components/transaction_list.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const myHome = '/myHome';


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum AppSate { showChart, showList }

class _MyHomePageState extends State<MyHomePage> {
  AppSate _state = AppSate.showChart;
  final _transactions = <Transaction>[];

  List<Transaction> get _recentTransactions {
    final compareDate = DateTime.now().subtract(const Duration(days: 7));

    return _transactions.where((e) => e.date.isAfter(compareDate)).toList();
  }

  void _addTransaction(String title, double value, DateTime date) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );

    setState(() {
      _transactions.insert(0, newTransaction);
    });
  }

  _removeTransaction(String id) {
    _transactions.removeWhere((element) => element.id == id);
    setState(() {});
  }

  void _showTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => TransactionForm(onSubmit: _addTransaction),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLandscap =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Despesas Pessoais'),
        actions: [
          if (isLandscap)
            IconButton(
              onPressed: () {
                _state = _state == AppSate.showChart
                    ? AppSate.showList
                    : AppSate.showChart;

                setState(() {});
              },
              icon: Icon(
                _state == AppSate.showChart
                    ? Icons.list_sharp
                    : Icons.pie_chart_sharp,
              ),
            ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.top,
          child: LayoutBuilder(
            builder: (_, constraints) {
              final screenHeight = constraints.maxHeight;
              return SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (!isLandscap || _state == AppSate.showChart)
                      SizedBox(
                        height: screenHeight * (isLandscap ? .8 : .25),
                        child: ChartWidget(_recentTransactions),
                      ),
                    if (!isLandscap || _state == AppSate.showList)
                      SizedBox(
                        height: screenHeight * (isLandscap ? .9 : .65),
                        child: _transactions.isEmpty
                            ? const Center(
                                child: Text('Nenhuma transação cadastrada'),
                              )
                            : TransactionList(
                                _transactions,
                                onRemove: _removeTransaction,
                              ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTransactionFormModal(context),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

