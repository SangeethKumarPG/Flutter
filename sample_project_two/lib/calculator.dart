import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  final TextEditingController _addResultController = TextEditingController();
  final TextEditingController _subResultController = TextEditingController();
  final TextEditingController _mulResultController = TextEditingController();
  final TextEditingController _divResultController = TextEditingController();

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    _addResultController.dispose();
    _subResultController.dispose();
    _mulResultController.dispose();
    _divResultController.dispose();
    super.dispose();
  }

  void _addNumbers() {
    final firstNumber = double.parse(_firstNumberController.text);
    final secondNumber = double.parse(_secondNumberController.text);
    final result = firstNumber + secondNumber;
    _addResultController.text = result.toString();
  }

  void _subtractNumbers() {
    final firstNumber = double.parse(_firstNumberController.text);
    final secondNumber = double.parse(_secondNumberController.text);
    final result = firstNumber - secondNumber;
    _subResultController.text = result.toString();
  }

  void _multiplyNumbers() {
    final firstNumber = double.parse(_firstNumberController.text);
    final secondNumber = double.parse(_secondNumberController.text);
    final result = firstNumber * secondNumber;
    _mulResultController.text = result.toString();
  }

  void _divideNumbers() {
    final firstNumber = double.parse(_firstNumberController.text);
    final secondNumber = double.parse(_secondNumberController.text);
    final result = firstNumber / secondNumber;
    _divResultController.text = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _firstNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Enter the first number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _secondNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Enter the second number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: _addNumbers,
                        child: const Text('ADD'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        readOnly: true,
                        controller: _addResultController,
                        decoration: const InputDecoration(
                          labelText: 'Add Result',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: _subtractNumbers,
                        child: const Text('SUB'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        readOnly: true,
                        controller: _subResultController,
                        decoration: const InputDecoration(
                          labelText: 'Sub Result',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: _multiplyNumbers,
                        child: const Text('MUL'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        readOnly: true,
                        controller: _mulResultController,
                        decoration: const InputDecoration(
                          labelText: 'Mul Result',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: _divideNumbers,
                          child: const Text('DIV'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          readOnly: true,
                          controller: _divResultController,
                          decoration: const InputDecoration(
                            labelText: 'Div Result',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
