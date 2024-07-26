import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/results_screen/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers,this.onRestart, {super.key});

  final List<String> chosenAnswers;
    final void Function() onRestart;

  int calculateCorrectAnswers() {
    int correctAnswers = 0;
    for (int i = 0; i < chosenAnswers.length; i++) {
      if (chosenAnswers[i] == questions[i].answers[0]) {
        correctAnswers++;
      }
    }
    return correctAnswers;
  }

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correctAnswer': questions[i].answers[0],
        'userAnswer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered ${calculateCorrectAnswers()} out of ${chosenAnswers.length} questions correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
