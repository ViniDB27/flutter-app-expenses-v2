import 'dart:math';

import 'package:expenses/model/transaction.dart';
import 'package:expenses/widgets/transaction_form.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:expenses/widgets/trnsaction_chart.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      name: 'Tenis Nike Runing',
      value: 189.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      name: 'Iphone 13',
      value: 7000.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      name: 'Macbook Pro',
      value: 10000.00,
      date: DateTime.now(),
    ),
    // Transaction(
    //   id: 't4',
    //   name: 'SSD 500 gb',
    //   value: 500.00,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't5',
    //   name: 'Cinema',
    //   value: 45.00,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't6',
    //   name: 'Fone G322',
    //   value: 600.00,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't7',
    //   name: 'Mouse G402',
    //   value: 200.00,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't8',
    //   name: 'RX 450',
    //   value: 3000.00,
    //   date: DateTime.now(),
    // ),
  ];

  void addTransaction(String title, double value) {
    final transaction = Transaction(
      id: Random().nextDouble().toString(),
      name: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(transaction);
    });

    Navigator.of(context).pop();
  }

  _openTrasactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => TransactionForm(
        addTransaction: addTransaction,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas pessoais'),
        actions: [
          IconButton(
            onPressed: () => _openTrasactionFormModal(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TransactionChart(),
            TransactionList(
              transactions: _transactions,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTrasactionFormModal(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
