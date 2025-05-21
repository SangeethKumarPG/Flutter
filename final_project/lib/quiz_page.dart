import 'package:final_project/result_page.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  final String email;

  const QuizPage({super.key, required this.email});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  int score = 0;
  List<String> questions = [
    'What is the capital of France?',
    'What is the capital of Germany?',
    'What is the capital of Italy?',
    'What is the capital of Spain?',
    'What is the capital of Portugal?'
  ];
  Map<int, List<String>> options = {
    0: ['Paris', 'Berlin', 'Rome', 'Madrid', 'Lisbon'],
    1: ['Berlin', 'Paris', 'Rome', 'Madrid', 'Lisbon'],
    2: ['Rome', 'Berlin', 'Paris', 'Madrid', 'Lisbon'],
    3: ['Madrid', 'Berlin', 'Rome', 'Paris', 'Lisbon'],
    4: ['Lisbon', 'Berlin', 'Rome', 'Madrid', 'Paris']
  };
  List<String> answers = ['Paris', 'Berlin', 'Rome', 'Madrid', 'Lisbon'];
  late List<String> userChoice;

  @override
  void initState() {
    super.initState();
    userChoice = List<String>.filled(questions.length, '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              questions[currentQuestion],
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: options[currentQuestion]?.length,
                itemBuilder: (context, index) {
                  return RadioListTile(
                    title: Text(options[currentQuestion]?[index] ?? ''),
                    value: options[currentQuestion]?[index],
                    groupValue: userChoice[currentQuestion],
                    onChanged: (value) {
                      setState(() {
                        userChoice[currentQuestion] = value!;
                        if (value == answers[currentQuestion]) {
                          score++;
                        }
                        if (currentQuestion < questions.length - 1) {
                          currentQuestion++;
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Quiz Result'),
                                content: Text(
                                    'Your score is $score/${questions.length}'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context)=>ResultPage(email: widget.email, score: score, totalQuestions: questions.length)));
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
