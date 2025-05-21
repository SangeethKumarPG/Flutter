import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String email;
  final int score;
  final int totalQuestions;

  const ResultPage({
    super.key, 
    required this.email,
    required this.score,
    required this.totalQuestions,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.score > (widget.totalQuestions / 2) 
                      ? 'Congratulations ${widget.email}!'
                      : 'Sorry ${widget.email}, You Failed',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Your Score is ${widget.score} out of ${widget.totalQuestions}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 30),
                Image(
                  image: widget.score > (widget.totalQuestions / 2)
                      ? const AssetImage('assets/success.jpg')
                      : const AssetImage('assets/mtta.png'),
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
