import 'package:flutter/material.dart';
//import 'home.dart';
import 'profile.dart';
import 'settings.dart';
import 'about.dart';
//import 'search.dart';

class AppDrawer extends StatelessWidget {
   final String username;
  final String email;
   AppDrawer({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/app_logo.png'),
                  ),
                  SizedBox(height: 10),
                  Text('Educational App', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
             ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage( username: username,
                    email: email,)),
                );
                // Navigate to settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => set_page()),
                );
                // Navigate to settings page
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
                // Navigate to about page
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to about page
              },
            ),
          ],
        ),
      );

  }
}
