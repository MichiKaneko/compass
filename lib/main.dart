import 'package:compass/view/question_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMPASS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mPlus1pTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const QuestionPage(),
    );
  }
}

