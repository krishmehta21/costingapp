import 'package:flutter/material.dart';
import 'package:costing/widget/button.dart';
import 'package:costing/widget/first.dart';
import 'package:costing/widget/inputEmail.dart';
import 'package:costing/widget/password.dart';
import 'package:costing/widget/textLogin.dart';
import 'package:costing/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define your login credentials validation logic here.
  bool isLoggedIn = false;

  // Function to handle login logic
  void _handleLogin() {
    // You can add validation logic here (e.g., email/password validation).
    // For now, we'll assume the login is successful.
    setState(() {
      isLoggedIn = true;
    });

    // If login is successful, navigate to HomePage or other pages.
    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/home'); // Navigate to the Home Page.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade900, Colors.lightBlueAccent],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Top Section: VerticalText and TextLogin
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    VerticalText(),
                    const SizedBox(width: 20), // Spacing between elements
                    TextLogin(),
                  ],
                ),
                const SizedBox(height: 30), // Spacing between sections

                // Input Fields: Email and Password
                InputEmail(),
                const SizedBox(height: 20), // Spacing between input fields
                PasswordInput(),
                const SizedBox(height: 30), // Spacing before button

                // Login Button
                ButtonLogin(onPressed: _handleLogin), // Pass the login handler
                const SizedBox(height: 20), // Spacing before "First Time" text

                // "First Time Here" Section
                FirstTime(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
