import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 10), // Adjust padding for better placement
      child: RotatedBox(
        quarterTurns: -1, // Rotates the text 90 degrees counter-clockwise
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40, // Slightly larger font for better readability
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0, // Adds spacing between letters for a modern look
          ),
        ),
      ),
    );
  }
}
