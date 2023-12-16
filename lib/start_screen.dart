import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: const AssetImage('assets/images/quiz-logo.png'),
          width: 300,
          color: Colors.white.withOpacity(0.6),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
          onPressed: startQuiz,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return const Color(0xFFFF7F12);
                }
                return const Color(0xFFFF7500);
              },
            ),
          ),
          icon: const Icon(Icons.arrow_forward_ios),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
