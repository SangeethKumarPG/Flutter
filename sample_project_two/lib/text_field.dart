import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final _textValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 500,
            child: TextField(
                controller: _textValue,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Enter Text Here',
                  border: const OutlineInputBorder(),
                )),
          ),
          Text(_textValue.text.toString()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  //Do something when button is pressed
                  setState(() {
                    _textValue.text;
                  });
                },
                child: const Text('Submit')),
          )
        ],
      )),
    );
  }
}
