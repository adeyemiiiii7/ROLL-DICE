import 'package:flutter/material.dart'; // Import the necessary packages

// Define a new widget called style_text
class StyledText extends StatelessWidget {
  // Define a constructor that takes in a String parameter called 'text'
  StyledText(this.text, {super.key});

  // Declare a String variable called 'text' to hold the value passed in the constructor
  final String text;

  // Override the build method to build the widget
  @override
  Widget build(BuildContext context) {
    // Return a new Text widget with the value of 'text'
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
