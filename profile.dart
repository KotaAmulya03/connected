import 'package:flutter/material.dart';
import 'package:my_project/Settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none, // Allows the avatar to overflow
              children: [
                Image.asset(
                  'assets/bg.jpg', // Replace with the actual path
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white, // White border for better visibility
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/prof.jpg'), // Replace with avatar path
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              "Human",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "@human_123",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Chip(
              label: Text(
                "Robotics, AI, Blockchain",
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 248, 248),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 58, 56, 56).withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                "A tech enthusiast deeply passionate about robotics, AI, and blockchain. I’m constantly exploring new ways to integrate these technologies to drive innovation, from developing autonomous systems to creating decentralized applications that transform industries.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, height: 1.5),
                
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add settings functionality
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to MyCustomPage
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Settings", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
