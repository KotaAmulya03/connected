import 'package:flutter/material.dart';
import 'package:my_project/home.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // Variable to track selected location
  String selectedLocation = '';

  // Function to handle button color change
  Color _getButtonColor(String location) {
    return selectedLocation == location ? Colors.grey[700]! : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Choose your Location",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for a location",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Grid layout for location buttons
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    locationButton("Hyderabad"),
                    locationButton("Mumbai"),
                    locationButton("Bangalore"),
                    locationButton("Ahmedabad"),
                    locationButton("Chennai"),
                    locationButton("Pune"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Get Started button at the bottom
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()), // Replace `HomePage` with your target page
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom widget for location button with style
  Widget locationButton(String location) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedLocation = location;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _getButtonColor(location), // Dynamic background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 5, // Shadow effect
        side: BorderSide.none, // Remove the black outline
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16), // Reduced padding for smaller buttons
        child: Text(
          location,
          style: TextStyle(
            color: selectedLocation == location ? Colors.white : Colors.black, // Text color change based on selection
            fontSize: 14, // Smaller font size for location buttons
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
