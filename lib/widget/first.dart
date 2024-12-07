import 'package:flutter/material.dart';
import 'package:costing/pages/newuser.page.dart';

class FirstTime extends StatefulWidget {
  @override
  _FirstTimeState createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center-align content
        children: <Widget>[
          Text(
            "New here?",
            style: TextStyle(
              fontSize: 16, // Slightly larger font for better readability
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 8), // Adjust spacing between text and button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewUser()),
              );
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold, // Bold text for emphasis
                color: Colors.lightBlueAccent,
                decoration: TextDecoration.underline, // Adds a subtle underline
              ),
            ),
          ),
        ],
      ),
    );
  }
}
