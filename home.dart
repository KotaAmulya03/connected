import 'package:flutter/material.dart';
import 'package:my_project/create.dart';
import 'package:my_project/list.dart';
import 'package:my_project/notifications.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.notifications, color: Colors.black),
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationApp()));
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.people, color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to your custom page when the list icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProjectsPage()), // Navigate to MyCustomPage
                    );
                  },
                  child: Icon(Icons.list, color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to your custom page when the list icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePage()), // Navigate to MyCustomPage
                    );
                  },
                  child: Icon(Icons.add_circle_outline, color: Colors.black, size: 30),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  buildProjectItem(
                    context,
                    ['assets/p1.jpg', 'assets/p2.jpg'],
                    'ArtHive',
                    2,
                    8,
                    'A collaborative art project where participants create murals, sculptures, or public art installations for their city.',
                  ),
                  buildProjectItem(
                    context,
                    ['assets/p3.jpg'],
                    'FitBuddy',
                    1,
                    5,
                    'An app designed to connect fitness enthusiasts for group workouts, running clubs, and sports activities.',
                  ),
                  buildProjectItem(
                    context,
                    ['assets/p4.jpg', 'assets/p5.jpg', 'assets/p6.jpg'],
                    'QuantumTrail',
                    3,
                    4,
                    'A quantum computing simulator designed to teach and experiment with quantum algorithms in an interactive environment.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProjectItem(BuildContext context, List<String> imagePaths, String title,
      int messages, int headcount, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imagePaths[0]),
                radius: 24,
              ),
              if (imagePaths.length > 1)
                Positioned(
                  right: -10,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imagePaths[1]),
                    radius: 16,
                  ),
                ),
            ],
          ),
          title: Text(
            '$title ($messages)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(description),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.link, color: Colors.grey),
              Text('Headcount-$headcount'),
            ],
          ),
          onTap: () {
            if (title == 'ArtHive') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArtHivePage(), // Navigate to ArtHivePage
                ),
              );
            } else {
              // Add navigation or functionality for other project items here
            }
          },
        ),
      ),
    );
  }
}

class MyCustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Custom Page"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          "This is my custom page",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}

class ArtHivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ArtHive"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  Image.asset('assets/ah1.jpg', fit: BoxFit.cover),
                  Image.asset('assets/ah2.jpg', fit: BoxFit.cover),
                  Image.asset('assets/ah3.jpg', fit: BoxFit.cover),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                "ArtHive is a collaborative art initiative that brings people from diverse backgrounds together to co-create murals, sculptures, and public art installations that celebrate the unique culture, history, and spirit of their city. This project fosters creativity, community engagement, and a sense of belonging while beautifying urban spaces.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Skills: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              Text(
                "Designing, Brainstorming, Planning, Event organizing, Collaboration.",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
