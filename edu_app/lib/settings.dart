import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
void main() {
  runApp(settings());
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: set_page(),
    );
  }
}
class set_page extends StatefulWidget {
  @override
  slide_toggle createState() => slide_toggle();
}

// ignore: must_be_immutable
class slide_toggle extends State<set_page> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'Toggle Theme',
              style: theme.textTheme.headlineSmall,
            ),
            Switch(
              value: theme.brightness == Brightness.dark,
              onChanged: (_) {
                // Toggle the theme by updating the MaterialApp widget
                runApp(
                  MaterialApp(
                    theme: theme.brightness == Brightness.light
                        ? ThemeData.dark()
                        : ThemeData.light(),
                    home: set_page(),
                  ),
                );
              },
            ),
            Slider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          // Positioned Chat Button
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Action for Chat button


                C_showAlertDialog(context);
              },
              child: Icon(Icons.chat),
              tooltip: 'Chat',
            ),
          ),
          // Positioned Review Button
          Positioned(
            bottom: 16,
            left: 100,
            child: FloatingActionButton(
              onPressed:() {
                
                R_showAlertDialog(context);
               
              },
              child: Icon(Icons.rate_review),
              tooltip: 'Review',
            ),
          ),
          // Positioned Challenges Button
          Positioned(
            bottom: 16,
            left: 184,
            child: FloatingActionButton(
              onPressed: () {
                D_launchURL;
                // Action for Challenges button
                print('Challenges button pressed');
              },
              child: Icon(Icons.timeline),
              tooltip: 'Challenges',
            ),
          ),
          // Positioned Main Floating Action Button (if needed)
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Main action
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
   String UserName = "";
void R_showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
       return AlertDialog(
          title: Text('Review-box'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Ensure the Column takes up only as much vertical space as needed
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Review about our quality'),
              SizedBox(height: 16), // Space between text and TextField
              TextField(
                onChanged: (text) {
                  setState(() {
                    UserName = text; // Update the userName as the user types
                  });
                },
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
      }
    );
  }
 void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('This is a SnackBar'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  void C_showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: Text('chat_box'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Ensure the Column takes up only as much vertical space as needed
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('drop your chat'),
              SizedBox(height: 16), // Space between text and TextField
              TextField(
                onChanged: (text) {
                  setState(() {
                    UserName = text; // Update the userName as the user types
                  });
                },
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
    
    if (await canLaunchUrl(url as Uri)) {
      
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }


}
