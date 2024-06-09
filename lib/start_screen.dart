import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz_logo.png'),
          const SizedBox(height: 60),
          Text(
            'Learn Flutter the Fun Way!!!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.purpleAccent.shade400,
              shadowColor: Colors.yellow,
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            label: Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
