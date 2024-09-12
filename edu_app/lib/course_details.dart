

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data.dart'; 

import 'home_footer.dart';

class CourseDetailScreen extends StatelessWidget {
  final Course course;
  final String username;
  final String email;

  


  CourseDetailScreen({required this.course,required this.username, required this.email});

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

    floatingActionButton: FloatingFooterPage(username: username, email:email),
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




 
 
}

