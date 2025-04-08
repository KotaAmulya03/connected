import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = "Hello, Flutter!";

  @override
  Widget build(BuildContext context) {
    // Get screen size and orientation using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App Interface"),
      ),
      body: Center(
        child: Container(
          // Applying BoxDecoration to the Container
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26, // Shadow color
                blurRadius: 10, // Blur effect
                offset: Offset(4, 4), // Position of the shadow
              ),
            ],
          ),
          padding: EdgeInsets.all(20), // Padding inside the container
          width: screenWidth * 0.8, // Set width to 80% of screen width
          height: screenHeight * 0.6, // Set height to 60% of screen height
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/team.jpg',height: 100,width: 200,),
              Text(
                _message,
                style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white), // Dynamic font size
              ),
              SizedBox(height: 20),
              // Display screen dimensions and orientation
              Text(
                'Screen Width: ${screenWidth.toStringAsFixed(2)}\n'
                'Screen Height: ${screenHeight.toStringAsFixed(2)}\n'
                'Orientation: ${isPortrait ? "Portrait" : "Landscape"}',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
