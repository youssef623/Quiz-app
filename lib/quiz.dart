import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Quiz> createState() {
    return _Quiz();
  }
}

// ignore: unused_element
class _Quiz extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
//    print(selectedAnswers.length);
    if (selectedAnswers.length >= questions.length) {
      setState(() {
        activeScreen =  ResultsScreen(selectedAnswers,restartQuiz);
      });
    }
//    printSelectedAnswers();
  }

  /* void printSelectedAnswers()
  {
   for (var answer in selectedAnswers) {
      print(answer);
    } 
  } */
  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }
  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 10, 114, 155),
                Color.fromARGB(255, 93, 55, 147)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
