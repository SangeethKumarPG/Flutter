import 'package:flutter/material.dart';

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  State<MultiplicationTable> createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {
  final TextEditingController _numberController = TextEditingController();
  String result = '';
  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplication Table'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Multiplication Table',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                controller: _numberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              onPressed: () {
                if (_numberController.text.isNotEmpty) {
                  setState(() {
                    result = '';
                    // Generate multiplication table logic here
                    for (int i = 1; i <= 10; i++) {
                      result +=
                          "$i x ${_numberController.text} = ${i * int.parse(_numberController.text)}";
                      result += '\n';
                    }
                  });
                }
              },
              child: const Text('Generate Table'),
            ),
            SizedBox(height: 500, child: Text(result.toString()))
          ],
        ),
      ),
    );
  }
}
