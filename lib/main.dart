import 'package:flutter/material.dart';
import 'package:spend_tracker/widgets/user_transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'spend Tracker',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Spend Tracker"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                width: double.infinity,
                height: 40,
                child: const Card(
                  elevation: 5,
                  color: Colors.red,
                  child: Text(
                    "Transactions",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
