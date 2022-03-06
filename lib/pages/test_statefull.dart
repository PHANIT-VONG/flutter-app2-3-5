import 'package:flutter/material.dart';

class TestStateFull extends StatefulWidget {
  const TestStateFull({Key? key}) : super(key: key);

  @override
  State<TestStateFull> createState() => _TestStateFullState();
}

class _TestStateFullState extends State<TestStateFull> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Redraw again');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
