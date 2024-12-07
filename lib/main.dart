import 'package:costing/pages/projectdetails.page.dart';
import 'package:flutter/material.dart';
import 'package:costing/pages/login.page.dart'; // Ensure correct path
import 'package:costing/pages/home.page.dart'; // Import your home page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Costing App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        hintColor: Colors.lightBlueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.grey.shade800)),
        buttonTheme: ButtonThemeData(buttonColor: Colors.lightBlueAccent),
      ),
      initialRoute: '/projectdetails', // Set the initial route to HomePage
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(), // Route for login page
        '/home': (context) => HomePage(),
        '/projectdetails' : (context) => ProjectDetails() // Route for home page
      },
    );
  }
}
