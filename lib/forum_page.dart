import 'package:flutter/material.dart';

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            _buildForumPost(
              title: 'How to improve your vocabulary?',
              user: 'John Doe',
              date: 'Dec 25, 2024',
              content: 'I have found that using flashcards is a great way to expand vocabulary...',
            ),
            _buildForumPost(
              title: 'Best techniques for learning grammar',
              user: 'Jane Smith',
              date: 'Dec 22, 2024',
              content: 'I suggest watching grammar tutorials and practicing daily...',
            ),
            _buildForumPost(
              title: 'Struggling with pronunciation',
              user: 'Sam Wilson',
              date: 'Dec 20, 2024',
              content: 'Anyone has tips on how to improve pronunciation? I find it difficult...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForumPost({required String title, required String user, required String date, required String content}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Posted by: $user', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            Text('Date: $date', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            SizedBox(height: 10),
            Text(content, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
