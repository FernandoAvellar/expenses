import 'package:expenses/components/transaction_card.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transactions.map((tr) {
          return TransactionCard(transaction: tr);
        })
      ],
    );
  }
}
