import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Achievements'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildAchievementCard(
              title: 'Beginner Learner',
              description: 'Complete 10 lessons.',
              color: Colors.blue,
            ),
            _buildAchievementCard(
              title: 'Quiz Master',
              description: 'Answer 20 quiz questions correctly.',
              color: Colors.orange,
            ),
            _buildAchievementCard(
              title: 'Language Enthusiast',
              description: 'Practice for 7 consecutive days.',
              color: Colors.green,
            ),
            _buildAchievementCard(
              title: 'Master of Vocabulary',
              description: 'Learn 100 new words.',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementCard({required String title, required String description, required Color color}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(Icons.star, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
