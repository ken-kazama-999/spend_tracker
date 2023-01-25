import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> txList;
  const TransactionList(this.txList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 3,
                      ),
                      color: Colors.red),
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    "\$${txList[index].amount.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Text(
                        txList[index].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        txList[index].date.toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: txList.length,
      ),
    );
  }
}
