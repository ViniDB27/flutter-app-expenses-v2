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
  final List<Transaction> _transaction = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(
          transactions: _transaction,
        ),
        TransactionForm(),
      ],
    );
  }
}
