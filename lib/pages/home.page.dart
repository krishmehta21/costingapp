import 'package:flutter/material.dart';
import 'projectdetails.page.dart'; // Ensure the path is correct

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController clientNameController = TextEditingController();
  final TextEditingController businessDetailsController = TextEditingController();
  final TextEditingController industryController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Add listeners to update the UI dynamically
    clientNameController.addListener(() {
      setState(() {});
    });
    businessDetailsController.addListener(() {
      setState(() {});
    });
    industryController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose controllers to prevent memory leaks
    clientNameController.dispose();
    businessDetailsController.dispose();
    industryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Profile'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Client/Inquiry Name
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Client / Inquiry Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: clientNameController,
                        decoration: InputDecoration(
                          hintText: 'Enter client name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Space between sections

              // Business Details
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Business Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: businessDetailsController,
                        decoration: InputDecoration(
                          hintText: 'Enter business details',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Space between sections

              // Industry
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Industry',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: industryController,
                        decoration: InputDecoration(
                          hintText: 'Enter industry type',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Display Entered Details
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entered Details:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Client Name: ${clientNameController.text.isEmpty ? "Not entered" : clientNameController.text}',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Business Details: ${businessDetailsController.text.isEmpty ? "Not entered" : businessDetailsController.text}',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Industry: ${industryController.text.isEmpty ? "Not entered" : industryController.text}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Next Button
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to ProjectDetails and pass the entered data
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectDetails(
                          clientName: clientNameController.text,
                          businessDetails: businessDetailsController.text,
                          industry: industryController.text,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: Colors.indigo.shade900,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
