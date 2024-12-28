import 'package:flutter/material.dart';
import 'home_page.dart';
import 'lessons_page.dart';
import 'quizzes_page.dart';
import 'progress_page.dart';
import 'achievements_page.dart';
import 'forum_page.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Learning App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        '/lessons': (context) => LessonsPage(),
        '/quizzes': (context) => QuizzesPage(),
        '/progress': (context) => ProgressPage(),
        '/achievements': (context) => AchievementsPage(),
        '/forum': (context) => ForumPage(),
      },
    );
  }
}
