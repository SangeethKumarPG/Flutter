import 'package:flutter/material.dart';

class StyledTextField extends StatefulWidget {
  const StyledTextField({super.key});

  @override
  State<StyledTextField> createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  bool _hide = true;
  final _userName = TextEditingController();
  final _password = TextEditingController();
  String resultText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Styled TextField'),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent.shade400,
          foregroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 500,
                child: TextField(
                    controller: _userName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your name',
                        prefixIcon: Icon(Icons.safety_check_outlined),
                        suffixIcon:
                            Icon(Icons.supervised_user_circle_outlined))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 500,
                child: TextField(
                    controller: _password,
                    obscureText: _hide,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Enter your password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _hide = !_hide;
                              });
                            },
                            icon: Icon(_hide
                                ? Icons.visibility_off
                                : Icons.visibility)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resultText =
                          'Name : ${_userName.text.toString()} \n Password : ${_password.text.toString()}';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent.shade400,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: const Text('Subimt'),
                ),
              ),
            ),
            Text(resultText.toString())
          ],
        )));
  }
}
