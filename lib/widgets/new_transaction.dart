import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function(String, double) addTx;
  final titleHandler = TextEditingController();
  final amountHandler = TextEditingController();

  void submitData() {
    final enteredTitle = titleHandler.text;
    final enteredAmount = double.parse(amountHandler.text);

    if (enteredTitle.isEmpty || enteredAmount < 0) {
      return;
    }

    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

  NewTransactions(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titleHandler,
                decoration: const InputDecoration(
                  label: Text(
                    "Title",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                controller: amountHandler,
                decoration: const InputDecoration(
                  label: Text(
                    "Amount",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
              ),
              TextButton(
                onPressed: submitData,
                child: const Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
