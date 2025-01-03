import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Counter Screen'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$clickCounter',
                    style: const TextStyle(
                        fontSize: 160, fontWeight: FontWeight.w100),
                  ),
                  Text(clickCounter == 1 ? 'Click' : 'Clicks',
                      style: const TextStyle(fontSize: 25))
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // El setState le dice a flutter que redibuje el widget donde
                // se encuentra el cambio.
                setState(() {
                  clickCounter += 1;
                });
              },
              child: const Icon(Icons.plus_one),
            )));
  }
}
