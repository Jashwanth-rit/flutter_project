import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FloatingFooterPage(),
//     );
//   }
// }

class FloatingFooterPage extends StatelessWidget {
   final String username;
  final String email;

  FloatingFooterPage({required this.username, required this.email});

  
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  MaterialPageRoute(
                    builder: (context) => Homepage(username: username, email: email),
                  ),
                );
                print('Main button pressed');
              },
              child: Icon(Icons.home),
              tooltip: 'Home',
            ),
          ),
        ],
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
                showSnackBar(context);
                Navigator.of(context).pop(); // Close the dialog
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
                showSnackBar(context);
                Navigator.of(context).pop(); // Close the dialog
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
      content: Text("thank you '_' "),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
