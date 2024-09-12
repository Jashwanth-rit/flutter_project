import 'package:flutter/material.dart';

import 'profile.dart';
import 'settings.dart';
import 'about.dart';

class AppDrawer extends StatelessWidget {
  final String username;
  final String email;

  AppDrawer({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // Drawer Header with a background image and user information
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 40, 53, 147), // Blue-purple gradient for a tech feel
                  Color.fromARGB(255, 123, 31, 162),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/photo.png'), // Tech-related avatar
              backgroundColor: Colors.white,
            ),
            accountName: Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: Text(
              email,
              style: TextStyle(fontSize: 14),
            ),
          ),

          // Drawer items with icons and navigation
          Expanded(
            child: ListView(
              children: <Widget>[
                _createDrawerItem(
                  icon: Icons.person,
                  text: 'Profile',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          username: username,
                          email: email,
                        ),
                      ),
                    );
                  },
                ),
                _createDrawerItem(
                  icon: Icons.home,
                  text: 'Home',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _createDrawerItem(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => set_page(
                          username: username,
                          email: email,
                        ),
                      ),
                    );
                  },
                ),
                _createDrawerItem(
                  icon: Icons.info,
                  text: 'About',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(
                          username: username,
                          email: email,
                        ),
                      ),
                    );
                  },
                ),
                _createDrawerItem(
                  icon: Icons.search,
                  text: 'Search',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          
          // Footer Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Educational Tech App",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create list tiles for the drawer
  Widget _createDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Color.fromARGB(255, 123, 31, 162)),
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      onTap: onTap,
    );
  }
}
