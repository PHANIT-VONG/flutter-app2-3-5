import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Button Pressed');
                },
                child: const Text('Elevated DDDDDD'),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                debugPrint('Button Pressed');
              },
              icon: const Icon(Icons.add),
              label: const Text('Elevated with icon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.remove),
              label: const Text('Text with icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline'),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {},
              child: const Text('Material Button'),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.search),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('Floatting'),
            ),
            CupertinoButton(
              color: Colors.red,
              child: const Text('Cupertino'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
