import 'package:flutter/material.dart';

class TransactionGraph extends StatelessWidget {
  const TransactionGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Theme.of(context).colorScheme.onSecondary,
        elevation: 5.0,
        child: Text(
          'Gráfico',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
