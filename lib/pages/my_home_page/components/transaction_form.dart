import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String title, double value, DateTime) onSubmit;

  const TransactionForm({required this.onSubmit, Key? key}) : super(key: key);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  DateTime? _selectedDate;

  void _handleSubmitForm() {
    final title = _titleController.text;
    final value = double.tryParse(_valueController.text) ?? 0;

    if (title.isEmpty || value == 0 || _selectedDate == null) return;

    widget.onSubmit(title, value, _selectedDate!);

    Navigator.of(context).pop();
  }

  _showDatePicker() {
    final currentDate = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: _selectedDate ?? currentDate,
      firstDate: DateTime(2019),
      lastDate: currentDate,
    ).then(
      (date) => setState(() => _selectedDate = date),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  keyboardAppearance: Brightness.dark,
                  decoration: InputDecoration(
                    labelText: 'Titulo',
                    floatingLabelStyle: TextStyle(color: Colors.amber[700]),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber.shade700),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _valueController,
                  keyboardAppearance: Brightness.dark,
                  onSubmitted: (_) => _handleSubmitForm(),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: r'Valor (R$)',
                    floatingLabelStyle: TextStyle(color: Colors.amber[700]),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber.shade700),
                    ),
                  ),
                ),
                //

                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _selectedDate == null
                            ? 'Selecione uma data'
                            : DateFormat('d MMM y').format(_selectedDate!),
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextButton(
                        onPressed: _showDatePicker,
                        child: Text(
                          'Selecionar data',
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                //
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: _handleSubmitForm,
                    child: const Text(
                      'NOVA TRANSAÇÃO',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
