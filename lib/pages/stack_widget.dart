import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        actions: [
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                const Icon(Icons.notifications, size: 40.0),
                Container(
                  height: 18.0,
                  width: 18.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text('2'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              right: -20,
              bottom: -10,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
