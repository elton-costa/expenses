import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Compra Tênis de Corrida',
        value: 380.10,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de Luz', value: 212.70, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Conta #3', value: 120.23, date: DateTime.now()),
    Transaction(
        id: 't4', title: 'Conta #4', value: 328.79, date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Conta #5', value: 47.11, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
