import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

void main() {
  runApp(AboutPageApp());
}

class AboutPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
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
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                C_showAlertDialog(context);
              },
              child: Icon(Icons.chat),
              tooltip: 'Chat',
            ),
          ),
          Positioned(
            bottom: 16,
            left: 100,
            child: FloatingActionButton(
              onPressed: () {
                R_showAlertDialog(context);
              },
              child: Icon(Icons.rate_review),
              tooltip: 'Review',
            ),
          ),
          Positioned(
            bottom: 16,
            left: 184,
            child: FloatingActionButton(
              onPressed: () {
                D_launchURL();
                print('Challenges button pressed');
              },
              child: Icon(Icons.timeline),
              tooltip: 'Challenges',
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage(username: '', email: '',)),
                );
                print('Main button pressed');
              },
              child: Icon(Icons.home),
              tooltip: 'Home',
            ),
          ),
        ],
      ),
    );
  }

  void R_showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Review-box'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Review about our quality'),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'review',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Future.delayed(Duration(milliseconds: 100), () {
                  showSnackBar(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

  void C_showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('chat_box'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('drop your chat'),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'drop-here',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Future.delayed(Duration(milliseconds: 100), () {
                  showSnackBar(context);
                });
              },
            ),
          ],
        );
      },
    );
  }

  void D_launchURL() async {
    const url = 'https://leetcode.com/problemset';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('This is a SnackBar'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
