import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Gender'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile<String>(
                title: const Text('Male'),
                value: 'Male',
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Female'),
                value: 'Female',
                groupValue: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Selected: ${gender ?? 'None'}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
