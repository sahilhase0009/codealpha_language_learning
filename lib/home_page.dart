import 'package:flutter/material.dart';
import 'package:language_learning_app/lessons_page.dart';
import 'package:language_learning_app/quizzes_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Welcome to the Language Learning App!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Start learning by selecting one of the categories below:',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 40),
              _buildCategoryCard(context, 'Lessons', Icons.book, Colors.blue),
              _buildCategoryCard(context, 'Quizzes', Icons.quiz, Colors.orange),
              _buildCategoryCard(context, 'Progress', Icons.bar_chart, Colors.purple),
              _buildCategoryCard(context, 'Achievements', Icons.star, Colors.green),
              _buildCategoryCard(context, 'Forum', Icons.forum, Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        // Add navigation to specific pages based on the category clicked
        if (title == 'Lessons') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LessonsPage()),
          );
        } else if (title == 'Quizzes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizzesPage()),
          );
        }
        // Add other conditions for Progress, Achievements, Forum
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
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
