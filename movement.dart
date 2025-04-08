import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  final String projectName;

  const ProjectDetailsPage({required this.projectName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Back button
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
        title: Text(
          projectName,
          style: TextStyle(
            color: Colors.black, // Set title color to black
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "75%",
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text("Completed", style: TextStyle(fontSize: 18.0)),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/p1.jpg'),
              ),
              title: Text("Working on beautifying the UI."),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/p2.jpg'),
              ),
              title: Text("Developing the database of fitness members."),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/p3.jpg'),
              ),
              title: Text("Developing AI tools for fitness suggestions."),
            ),
            SizedBox(height: 16.0),
            Text(
              "AI predicted Timeline:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text("The project may take more"),
            Text(
              "1 Month 13 Days 7 Hours",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              "Success Prediction:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "89%",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
