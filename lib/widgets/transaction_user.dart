import 'package:expenses/model/transaction.dart';
import 'package:expenses/widgets/transaction_form.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransacationUser extends StatefulWidget {
  const TransacationUser({Key? key}) : super(key: key);

  @override
  _TransacationUserState createState() => _TransacationUserState();
}

class _TransacationUserState extends State<TransacationUser> {
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
    Transaction(
      id: 't4',
      name: 'SSD 500 gb',
      value: 500.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      name: 'Cinema',
      value: 45.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      name: 'Fone G322',
      value: 600.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      name: 'Mouse G402',
      value: 200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      name: 'RX 450',
      value: 3000.00,
      date: DateTime.now(),
    ),

  ];

  void addTransaction(Transaction transaction) {
    setState((){
      _transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(
          addTransaction: addTransaction,
        ),
        TransactionList(
          transactions: _transactions,
        ),
      ],
    );
  }
}
