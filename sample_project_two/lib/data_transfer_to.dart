import 'package:flutter/material.dart';

class DataTransferTo extends StatelessWidget {
  final String name;

  final String email;

  final String phone;

  const DataTransferTo(
      {super.key,
      required this.name,
      required this.email,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Transfer To'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SafeArea(
            child: Center(
          child: Column(children: [
            Text(
              'Name : $name \nEmail : $email \nPhone : $phone',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]),
        )));
  }
}
