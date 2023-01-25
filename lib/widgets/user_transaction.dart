import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> txList = [
    Transaction("t1", "flenjo", 23.09, DateTime.now()),
    Transaction("t1", "shayo", 23.09, DateTime.now()),
  ];

  void addTx(String txTitle, double txAmount) {
    final newTx = Transaction(
      DateTime.now().toString(),
      txTitle,
      txAmount,
      DateTime.now(),
    );

    setState(() {
      txList.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(addTx),
        TransactionList(txList),
      ],
    );
  }
}
