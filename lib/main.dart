import 'package:flutter/material.dart';
import 'package:expenses/components/header.dart';
import 'package:expenses/components/transaction_graph.dart';
import 'package:expenses/components/transaction_user.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TransactionGraph(),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
