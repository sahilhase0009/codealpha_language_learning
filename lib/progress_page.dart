import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Tracker'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Learning Progress',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Completed 50% of lessons and quizzes!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
              minHeight: 10,
            ),
            SizedBox(height: 30),
            Text(
              'Achievements so far:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. Completed 5 lessons',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Passed 3 quizzes',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Streak: 5 days',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
