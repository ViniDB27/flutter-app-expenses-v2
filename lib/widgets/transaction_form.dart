import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String title, double value) addTransaction;

  const TransactionForm({
    required this.addTransaction,
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  void _onSubmint() {
    widget.addTransaction(
      titleController.text,
      double.parse(valueController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
              onSubmitted: (_) => _onSubmint,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: _onSubmint,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
