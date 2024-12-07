import 'package:flutter/material.dart';
import 'package:costing/pages/login.page.dart';

class UserOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Symmetric padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center-align the row
        children: <Widget>[
          Text(
            'Have we met before?',
            style: TextStyle(
              fontSize: 14, // Slightly larger for better readability
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 5), // Small space between text and button
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'Sign in', // Corrected typo from 'Sing in' to 'Sign in'
              style: TextStyle(
                fontSize: 14, // Increased for readability
                fontWeight: FontWeight.bold, // Added bold style for emphasis
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
