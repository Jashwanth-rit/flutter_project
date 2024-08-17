import 'package:flutter/material.dart';


class Course {
  final String title;
  final String description;
  final String logoPath; // Path for images or logos
  final IconData icon; // Icon to represent the course

  Course({
    required this.title,
    required this.description,
    required this.logoPath,
    required this.icon,
  });
}

// Create a list of courses with icons
final List<Course> courses = [
  Course(
    title: 'Flutter Basics',
    description: 'Learn the basics of Flutter.',
    logoPath: 'assets/flutter_logo.png',
    icon: Icons.flutter_dash, // Icon for Flutter
  ),
  Course(
    title: 'Dart Programming',
    description: 'Introduction to Dart programming language.',
    logoPath: 'assets/dart_logo.png',
    icon: Icons.code, // Icon for Dart Programming
  ),
  Course(
    title: 'Advanced Flutter',
    description: 'Deep dive into advanced Flutter concepts.',
    logoPath: 'assets/advanced_flutter_logo.png',
    icon: Icons.flash_on, // Icon for Advanced Flutter
  ),
  Course(
    title: 'Web Development with HTML & CSS',
    description: 'Understand the fundamentals of web development with HTML and CSS.',
    logoPath: 'assets/html_css_logo.png',
    icon: Icons.web, // Icon for Web Development
  ),
  Course(
    title: 'JavaScript Basics',
    description: 'Introduction to JavaScript programming language.',
    logoPath: 'assets/javascript_logo.png',
    icon: Icons.code, // Icon for JavaScript
  ),
  Course(
    title: 'React Native',
    description: 'Learn how to build mobile applications using React Native.',
    logoPath: 'assets/react_native_logo.png',
    icon: Icons.web, // Alternative icon for React Native
  ),
  Course(
    title: 'Machine Learning Basics',
    description: 'Introduction to machine learning concepts and techniques.',
    logoPath: 'assets/machine_learning_logo.png',
    icon: Icons.memory, // Icon for Machine Learning
  ),
  Course(
    title: 'Database Management',
    description: 'Learn about database management systems and SQL.',
    logoPath: 'assets/database_logo.png',
    icon: Icons.storage, // Icon for Database Management
  ),
  Course(
    title: 'Introduction to Cloud Computing',
    description: 'Understand the basics of cloud computing and its services.',
    logoPath: 'assets/cloud_computing_logo.png',
    icon: Icons.cloud, // Icon for Cloud Computing
  ),
  Course(
    title: 'UX/UI Design',
    description: 'Explore the principles of user experience and user interface design.',
    logoPath: 'assets/ux_ui_design_logo.png',
    icon: Icons.palette, // Icon for UX/UI Design
  ),
  Course(
    title: 'Mobile App Development with Kotlin',
    description: 'Learn mobile app development using Kotlin.',
    logoPath: 'assets/kotlin_logo.png',
    icon: Icons.android, // Icon for Kotlin
  ),
  Course(
    title: 'Game Development with Unity',
    description: 'Introduction to game development using Unity.',
    logoPath: 'assets/unity_logo.png',
    icon: Icons.games, // Icon for Unity
  ),
  Course(
    title: 'API Development with Node.js',
    description: 'Learn to build APIs using Node.js.',
    logoPath: 'assets/nodejs_logo.png',
    icon: Icons.api, // Icon for Node.js
  ),
  Course(
    title: 'Introduction to Docker',
    description: 'Understand the basics of containerization with Docker.',
    logoPath: 'assets/docker_logo.png',
    icon: Icons.memory, // Alternative icon for Docker
  ),
  Course(
    title: 'Introduction to Blockchain',
    description: 'Learn the fundamentals of blockchain technology.',
    logoPath: 'assets/blockchain_logo.png',
    icon: Icons.lock, // Icon for Blockchain
  ),
  Course(
    title: 'Data Visualization with Tableau',
    description: 'Learn to visualize data using Tableau.',
    logoPath: 'assets/tableau_logo.png',
    icon: Icons.bar_chart, // Icon for Tableau
  ),
  Course(
    title: 'Cybersecurity Basics',
    description: 'Introduction to cybersecurity concepts and practices.',
    logoPath: 'assets/cybersecurity_logo.png',
    icon: Icons.security, // Icon for Cybersecurity
  ),
  Course(
    title: 'Digital Marketing Fundamentals',
    description: 'Learn the basics of digital marketing strategies.',
    logoPath: 'assets/digital_marketing_logo.png',
    icon: Icons.trending_up, // Icon for Digital Marketing
  ),
  Course(
    title: 'Introduction to AI',
    description: 'Understand the basics of artificial intelligence.',
    logoPath: 'assets/ai_logo.png',
    icon: Icons.android, // Alternative icon for AI
  ),
  Course(
    title: 'Agile Project Management',
    description: 'Learn agile methodologies for project management.',
    logoPath: 'assets/agile_logo.png',
    icon: Icons.timeline, // Icon for Agile
  ),
  Course(
    title: 'Software Testing Basics',
    description: 'Introduction to software testing and quality assurance.',
    logoPath: 'assets/software_testing_logo.png',
    icon: Icons.verified_user, // Icon for Software Testing
  ),
  Course(
    title: 'Introduction to AWS',
    description: 'Understand the basics of Amazon Web Services.',
    logoPath: 'assets/aws_logo.png',
    icon: Icons.cloud_done, // Icon for AWS
  ),
  Course(
    title: 'Digital Illustration with Adobe Illustrator',
    description: 'Learn digital illustration using Adobe Illustrator.',
    logoPath: 'assets/adobe_illustrator_logo.png',
    icon: Icons.brush, // Icon for Adobe Illustrator
  ),
  Course(
    title: 'Product Management Fundamentals',
    description: 'Introduction to product management and development.',
    logoPath: 'assets/product_management_logo.png',
    icon: Icons.work, // Icon for Product Management
  ),
  Course(
    title: 'Introduction to TensorFlow',
    description: 'Learn the basics of TensorFlow for machine learning.',
    logoPath: 'assets/tensorflow_logo.png',
    icon: Icons.science, // Icon for TensorFlow
  ),
];