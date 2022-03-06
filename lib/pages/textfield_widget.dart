import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({Key? key}) : super(key: key);

  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //String nameOnChang = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                // onChanged: (value) {
                //   nameOnChang = value;
                //   debugPrint(value);
                // },
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Name',
                  labelText: 'Enter Name*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(seconds: 2),
                      content: Text(name.text),
                    ),
                  );

                  //debugPrint(nameOnChang);
                  //debugPrint(name.text);
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
