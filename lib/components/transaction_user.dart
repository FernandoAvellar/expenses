import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Tênis de Corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Raquetes para ping-pong',
        value: 189.00,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.insert(0, newTransaction);
    });
  }

  // _removeTransaction(String id) {
  //   setState(() {
  //     _transactions.removeWhere((transaction) => transaction.id == id);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(onSubmit: _addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
