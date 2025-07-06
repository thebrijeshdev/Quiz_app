import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
