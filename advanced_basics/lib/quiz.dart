import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:advanced_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override 
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }
  // void switchScreen(){
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectedAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void resetQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }
  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectedAnswer: selectedAnswer,);
    }
    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, resetQuiz: resetQuiz,);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 95, 49, 173),
                Color.fromARGB(255, 93, 61, 147),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child:  screenWidget,
        ),
      ),
    );
  }
}
