import 'package:flutter/material.dart';

class ArtHiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtHivePage(),
    );
  }
}

class ArtHivePage extends StatelessWidget {
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
          "ArtHive",
          style: TextStyle(
            color: Colors.black, // Set title color to black
            fontWeight: FontWeight.bold,
          ),
        ),
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
                "Skills:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              Text(
                "Designing, Brainstorming, Planning, Event organizing, Collaboration.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0), // Add space before the button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              // Action for the "Connect" button
              // Add navigation or functionality for the connect button here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Set button color
              shape: StadiumBorder(), // Make button rounded
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
            ),
            child: Text(
              "Connect",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
