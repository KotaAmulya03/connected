import 'package:flutter/material.dart';
import 'proj.dart';
import 'LoginPage.dart';
import 'signup.dart';
import 'loc.dart';
import 'home.dart';
import 'profile.dart'; 
import 'list.dart';
import 'create.dart';
import 'notifications.dart';
import 'launch2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchP2(),
      routes: {
        '/login':(context)=> LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/location': (context) => LocationPage(),
        '/home': (context) => HomePage(), // Add Home Page
        '/profile': (context) => ProfilePage(), // Add Profile Page
        '/proj': (context) => ArtHiveApp(),
        '/list': (context) => ProjectsPage(),
        '/movement': (context) => ProjectDetailsPage(projectName: 'FitBuddy'),
        '/notifications': (context) => NotificationApp(),
        '/create': (context) => CreatePage(),
      },
    );
  }

  // ignore: non_constant_identifier_names
  dynamic ProjectDetailsPage({required String projectName}) => ProjectDetailsPage(projectName: 'FitBuddy');
}
