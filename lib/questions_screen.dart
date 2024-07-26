import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.chooseAnswer,{super.key});
  final void Function(String answer) chooseAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _Questions();
  }
}

// ignore: unused_element
class _Questions extends State<QuestionsScreen> {
  var question = 0;
  void onTap(String answer) {
    widget.chooseAnswer(answer);
    setState(() {
      question++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[question];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, onTap);
            }),
          ],
        ),
      ),
    );
  }
}
