import 'package:flutter/material.dart';

class TransactionChart extends StatelessWidget {
  const TransactionChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('Gráfico'),
      elevation: 5,
      color: Colors.blue,
    );
  }
}
