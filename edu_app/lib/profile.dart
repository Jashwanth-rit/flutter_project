// import 'package:flutter/material.dart';

// import 'main.dart'; 
// import 'package:url_launcher/url_launcher.dart';
// import 'home.dart';

// void main() {
//   runApp(profile());
// }

// class profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfilePage(),
//     );
//   }
// }


// class ProfilePage extends StatelessWidget {
   

 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with a user profile picture asset
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Text(
//               'jk',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Center(
//               child: Text(
//                 'jk@gmail.com',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Progress',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             LinearProgressIndicator(
//               value: 7,
//               backgroundColor: Colors.grey[300],
//               color: Colors.blue,
//               minHeight: 10,
//             ),
//             SizedBox(height: 10),
//             Text(
//               '${(7 * 100).toStringAsFixed(1)}% Complete',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[700],
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                  Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginPage()),
//                 );
//                 // Add logout functionality here
//               },
//               child: Text('Logout'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Stack(
//         children: [
//           // Positioned Chat Button
//           Positioned(
//             bottom: 16,
//             left: 16,
//             child: FloatingActionButton(
//               onPressed: () {
//                 // Action for Chat button


//                 C_showAlertDialog(context);
//               },
//               child: Icon(Icons.chat),
//               tooltip: 'Chat',
//             ),
//           ),
//           // Positioned Review Button
//           Positioned(
//             bottom: 16,
//             left: 100,
//             child: FloatingActionButton(
//               onPressed:() {
                
//                 R_showAlertDialog(context);
               
//               },
//               child: Icon(Icons.rate_review),
//               tooltip: 'Review',
//             ),
//           ),
//           // Positioned Challenges Button
//           Positioned(
//             bottom: 16,
//             left: 184,
//             child: FloatingActionButton(
//               onPressed: () {
//                 D_launchURL;
//                 // Action for Challenges button
//                 print('Challenges button pressed');
//               },
//               child: Icon(Icons.timeline),
//               tooltip: 'Challenges',
//             ),
//           ),
//           // Positioned Main Floating Action Button (if needed)
//           Positioned(
//             bottom: 16,
//             right: 16,
//             child: FloatingActionButton(
//               onPressed: () {
//                 // Main action
//                  Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Homepage()),
//                 );
//                 print('Main button pressed');
//               },
//               child: Icon(Icons.home),
//               tooltip: 'Home',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//    String UserName = "";
// void R_showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//        return AlertDialog(
//           title: Text('Review-box'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min, // Ensure the Column takes up only as much vertical space as needed
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Review about our quality'),
//               SizedBox(height: 16), // Space between text and TextField
//               TextField(
//                 onChanged: (text) {
//                   // setState(() {
//                   //   UserName = text; // Update the userName as the user types
//                   // });
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'review',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 showSnackBar(context);
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//             ),
//           ],
//         );
//       }
//     );
//   }
//  void showSnackBar(BuildContext context) {
//     final snackBar = SnackBar(
//       content: Text('This is a SnackBar'),
//     );

//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }
//   void C_showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return  AlertDialog(
//           title: Text('chat_box'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min, // Ensure the Column takes up only as much vertical space as needed
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('drop your chat'),
//               SizedBox(height: 16), // Space between text and TextField
//               TextField(
//                 onChanged: (text) {
//                   // setState(() {
//                   //   UserName = text; // Update the userName as the user types
//                   // });
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'drop-here',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 showSnackBar(context);
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//  void D_launchURL() async {
//     const url = 'https://leetcode.com/problemset';
    
//     if (await canLaunchUrl(url as Uri)) {
      
//       await launchUrl(url as Uri);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }


// }


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart'; // Ensure this contains the Homepage widget
//import 'login.dart';
import 'main.dart'; // Ensure this contains the LoginPage widget

// void main() {
//   runApp(ProfileApp());
// }

// class ProfileApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfilePage(),
//     );
//   }
// }

class ProfilePage extends StatelessWidget {
  final String username;
  final String email;

  ProfilePage({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_pic.png'), // Replace with a user profile picture asset
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                '$username',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                '$email',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Progress',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: 0.7, // Update this to reflect progress
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
              minHeight: 10,
            ),
            SizedBox(height: 10),
            Text(
              '70% Complete',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                // Add logout functionality here
              },
              child: Text('Logout'),
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
                        _launchChallengesURL();
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

  void _launchChallengesURL() async {
    const url = 'https://leetcode.com/problemset';
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
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


