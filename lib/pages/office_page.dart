import 'package:flutter/material.dart';

class OfficePage extends StatelessWidget {
  const OfficePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Office Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Office Page',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
