import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(this.transaction, {super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 15,
            ),
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              child: Text(
                'R\$ ${transaction.value.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.title,
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                DateFormat('d MMM y').format(transaction.date),
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          // IconButton(
          //   iconSize: 40,
          //   icon: const Icon(Icons.delete_rounded),
          //   color: Colors.red[400],
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
