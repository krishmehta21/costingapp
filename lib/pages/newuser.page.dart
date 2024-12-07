import 'package:flutter/material.dart';
import 'package:costing/widget/buttonNewUser.dart';
import 'package:costing/widget/newEmail.dart';
import 'package:costing/widget/newName.dart';
import 'package:costing/widget/password.dart';
import 'package:costing/widget/singup.dart';
import 'package:costing/widget/textNew.dart';
import 'package:costing/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                // Top Section: Sign-up Icon/Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SingUp(),
                    const SizedBox(width: 10), // Add spacing between widgets
                    TextNew(),
                  ],
                ),
                const SizedBox(height: 30), // Space between sections

                // Input Fields: Name, Email, Password
                NewName(),
                const SizedBox(height: 20), // Space between input fields
                NewEmail(),
                const SizedBox(height: 20),
                PasswordInput(),
                const SizedBox(height: 30), // Space before button

                // Register Button
                ButtonNewUser(),
                const SizedBox(height: 20), // Space before "Already a user"

                // Already a User Section
                UserOld(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
