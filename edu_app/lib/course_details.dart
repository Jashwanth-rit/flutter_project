

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data.dart'; // Ensure this contains the Course class
import 'home.dart'; // Ensure this contains the Homepage widget

class CourseDetailScreen extends StatelessWidget {
  final Course course;

  CourseDetailScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(course.icon,
            size: 150,),
            SizedBox(height: 20),
            Text(
              course.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _launchDocumentationURL,
                  child: Text('Notes-Documentation'),
                ),
                SizedBox(width: 20), // Spacing between buttons
                TextButton(
                  onPressed: _launchVideosURL,
                  child: Text('Videos-Tutorial'),
                ),
              ],
            ),
          ],
        ),
      ),

     floatingActionButton: Stack(
        children: [
          // Centering the buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        _showChatDialog(context);
                      },
                      child: Icon(Icons.chat),
                      tooltip: 'Chat',
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _showReviewDialog(context);
                      },
                      child: Icon(Icons.rate_review),
                      tooltip: 'Review',
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _launchChallengesURL;
                      },
                      child: Icon(Icons.timeline),
                      tooltip: 'Challenges',
                    ),
                  ],
                ),
                SizedBox(height: 16), // Space between row of buttons and home button
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage(username: '', email: '',)),
                    );
                  },
                  child: Icon(Icons.home),
                  tooltip: 'Home',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 void _launchVideosURL() async {
  const url = 'https://www.youtube.com';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void _launchDocumentationURL() async {
  const url = 'https://www.google.com';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void _launchChallengesURL() async {
  const url = 'https://leetcode.com/problemset';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}


  void _showReviewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Review Box'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Review about our quality'),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Review',
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
              },
            ),
          ],
        );
      },
    );
  }

  void _showChatDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Chat Box'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Drop your chat'),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Drop here',
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
              },
            ),
          ],
        );
      },
    );
  }
}

