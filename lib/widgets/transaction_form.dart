import 'dart:math';

import 'package:expenses/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final void Function(Transaction transaction) addTransaction;

  TransactionForm({
    required this.addTransaction,
    Key? key,
  }) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () => addTransaction(Transaction(
                    id: Random().nextDouble().toString(),
                    name: titleController.text,
                    value: double.parse(valueController.text),
                    date: DateTime.now(),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
