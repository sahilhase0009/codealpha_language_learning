import 'package:flutter/material.dart';

class QuizzesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildQuizCard(context, 'Quiz 1: Basic Vocabulary', Colors.blue),
            _buildQuizCard(context, 'Quiz 2: Sentence Construction', Colors.orange),
            _buildQuizCard(context, 'Quiz 3: Advanced Vocabulary', Colors.green),
            _buildQuizCard(context, 'Quiz 4: Pronunciation Test', Colors.red),
            _buildQuizCard(context, 'Quiz 5: Grammar Test', Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizCard(BuildContext context, String title, Color color) {
    return GestureDetector(
      onTap: () {
        // Navigate to quiz details
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizDetailPage(quizTitle: title),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Icon(Icons.quiz, color: Colors.white),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class QuizDetailPage extends StatelessWidget {
  final String quizTitle;
  QuizDetailPage({required this.quizTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(quizTitle),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text(
            'Here are the details of $quizTitle. Complete the quiz to test your knowledge.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
