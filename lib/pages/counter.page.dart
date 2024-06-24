import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(fontSize: 25, color: Colors.brown),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text("Counter value = ${counter}"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "min",
            onPressed: () {
              setState(() {
                --counter;
              });
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "max",
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
