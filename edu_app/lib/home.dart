import 'package:flutter/material.dart';
import 'drawer.dart';
import 'course_details.dart';
import 'data.dart';
import 'home_footer.dart';

class Homepage extends StatefulWidget {
  final String username;
  final String email;

  Homepage({required this.username, required this.email});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _searchController = TextEditingController();
  List<Course> _filteredCourses = courses;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterCourses);
  }

  void _filterCourses() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredCourses = courses.where((course) {
        return course.title.toLowerCase().contains(query) ||
               course.description.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search courses...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: AppDrawer(username: widget.username, email: widget.email),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCourses.length,
              itemBuilder: (context, index) {
                final course = _filteredCourses[index];
                return ListTile(
                  leading: Icon(course.icon),
                  title: Text(course.title),
                  subtitle: Text(course.description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseDetailScreen(
                          course: course,
                          username: widget.username,
                          email: widget.email,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingFooterPage(username: widget.username, email: widget.email),
    );
  }
}
