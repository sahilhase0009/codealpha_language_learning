import 'package:flutter/material.dart';

class LessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildLessonCard(context, 'Chapter 1: Introduction to the Language', Colors.blue),
            _buildLessonCard(context, 'Chapter 2: Basic Vocabulary', Colors.orange),
            _buildLessonCard(context, 'Chapter 3: Grammar Essentials', Colors.green),
            _buildLessonCard(context, 'Chapter 4: Sentence Formation', Colors.red),
            _buildLessonCard(context, 'Chapter 5: Advanced Phrases', Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonCard(BuildContext context, String title, Color color) {
    return GestureDetector(
      onTap: () {
        // Navigate to a detailed lesson page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LessonDetailPage(lessonTitle: title),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Icon(Icons.book, color: Colors.white),
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

class LessonDetailPage extends StatelessWidget {
  final String lessonTitle;
  LessonDetailPage({required this.lessonTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lessonTitle),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text(
            'Detailed content of $lessonTitle. \n\n' +
                'Here is the detailed explanation of $lessonTitle. You will learn essential concepts to enhance your understanding of this topic. Keep reading and practicing...',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
