import 'package:flutter/material.dart';
import 'package:my_project/create.dart';
import 'package:my_project/home.dart';
import 'package:my_project/movement.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.notifications, color: Colors.black),
          onPressed: () {
            // Add notification functionality
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Human',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  '@human_123',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/prof.jpg'), // Replace icon with prof image
              radius: 16,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile'); // Navigate to Profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.search, color: Colors.black),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(Icons.people, color: Colors.black, size: 30),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.list, color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePage()),
                    );
                  },
                  child: Icon(Icons.add_circle_outline, color: Colors.black, size: 30),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  ProjectTile(projectName: "FitBuddy", category: "Fitness"),
                  ProjectTile(projectName: "CineMakers", category: "Movie"),
                  ProjectTile(projectName: "NeuraLinker", category: "App"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String projectName;
  final String category;

  const ProjectTile({
    required this.projectName,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          projectName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(category),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Button background color set to black
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjectDetailsPage(projectName: projectName),
              ),
            );
          },
          child: Text(
            "Movement",
            style: TextStyle(
              color: Colors.white, // Text color set to white
              fontWeight: FontWeight.bold, // Text style set to bold
            ),
          ),
        ),
      ),
    );
  }
}
