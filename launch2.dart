import 'package:flutter/material.dart';
import 'package:my_project/LoginPage.dart';

class LaunchP2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Automatically navigate after 2 seconds
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to LoginPage
      );
    });

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to LoginPage
          );
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: FittedBox(
              fit: BoxFit.fill, // Makes the image cover the entire screen
              child: Image.asset(
                'assets/l2.jpg', // Replace with your image asset path
              ),
            ),
          ),
        ),
      ),
    );
  }
}
