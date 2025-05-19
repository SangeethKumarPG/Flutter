import 'package:flutter/material.dart';
import 'package:sample_project_two/calculator.dart';
import 'package:sample_project_two/counter_app.dart';
import 'package:sample_project_two/datatransfer_from.dart';
import 'package:sample_project_two/multiplication_table.dart';
import 'package:sample_project_two/radio_button.dart';
import 'package:sample_project_two/text_field.dart';
import 'package:sample_project_two/text_field_styled.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterApp()));
                },
                child: const Text('Counter App')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTextField()));
                },
                child: const Text('Text Field')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StyledTextField()));
                },
                child: const Text('Styled Text')),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Calculator()));
                  },
                  child: const Text('Calculator'))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MultiplicationTable()));
                },
                child: const Text('Multiplication Table'),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RadioButton()));
                  },
                  child: const Text('RadioButton'))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DatatransferFrom()));
                },
                child: const Text('Data Transfer')),
          )
        ],
      ),
    ));
  }
}
