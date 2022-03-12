import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/button_widget.dart';
import 'package:flutter_application_2/pages/list_widget.dart';
import 'package:flutter_application_2/pages/stack_widget.dart';
import 'package:flutter_application_2/pages/test_statefull.dart';
import 'package:flutter_application_2/pages/textfield_widget.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackWidget(),
    );
  }
}
