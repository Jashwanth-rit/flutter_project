import 'package:flutter/material.dart';
import 'home_footer.dart';

class AboutPage extends StatelessWidget {
   final String username;
  final String email;

  AboutPage({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Tech Educational App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Our App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to our Tech Educational App, your gateway to mastering technology! Whether you are a beginner or an advanced learner, our app offers a wide range of courses, tutorials, and resources to help you build and enhance your tech skills.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Features:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              BulletPoint(text: 'Comprehensive courses covering various tech topics.'),
              BulletPoint(text: 'Interactive tutorials to reinforce learning.'),
              BulletPoint(text: 'Expert instructors with industry experience.'),
              BulletPoint(text: 'Real-world projects and assignments.'),
              BulletPoint(text: 'Certification upon course completion.'),
              SizedBox(height: 16),
              Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Our mission is to empower individuals to achieve their career goals by providing high-quality tech education that is accessible to everyone. We believe that technology is the key to the future, and our app is designed to equip you with the skills you need to succeed in the fast-paced tech industry.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Join thousands of learners and start your tech journey today! Explore our courses, practice with hands-on projects, and become a tech expert with our comprehensive educational app.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingFooterPage(username: username, email:email),
    );
  }

 
}

// Immutable BulletPoint widget
class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(fontSize: 18)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
