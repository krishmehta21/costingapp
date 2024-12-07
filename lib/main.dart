import 'package:costing/pages/boxdetails.page.dart';
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
      initialRoute: '/home', // Set the initial route to HomePage
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(), // Route for login page
        '/home': (context) => HomePage(),
        '/boxdetails': (context) => BoxDetails(), // Route for box details
      },
      // Use onGenerateRoute for dynamic parameter passing
      onGenerateRoute: (settings) {
        if (settings.name == '/projectdetails') {
          final args = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) => ProjectDetails(
              clientName: args['clientName'] ?? 'Unknown',
              businessDetails: args['businessDetails'] ?? 'Unknown',
              industry: args['industry'] ?? 'Unknown',
            ),
          );
        }
        return null; // Handle undefined routes
      },
    );
  }
}
