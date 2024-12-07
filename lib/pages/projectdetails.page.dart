import 'package:flutter/material.dart';

class ProjectDetails extends StatefulWidget {
  final String clientName;
  final String businessDetails;
  final String industry;

  ProjectDetails({
    required this.clientName,
    required this.businessDetails,
    required this.industry,
  });

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  // Variables to hold the selected values
  String? selectedBoxType;
  String? selectedPackagingAccessory;

  // List of Box Types
  final List<String> boxTypes = [
    'Top and Bottom Box',
    'Push & Pull Drawer Rigid Box',
    'Flat Fold Magnetic Rigid Box',
    'Shoulder Neck Rigid Box',
    'Monocarton Box',
    'Bit Box',
  ];

  // List of Packaging Accessories
  final List<String> packagingAccessories = [
    'Paper Bags',
    'Box Sleeves',
    'Wrapping Paper',
    'Tags',
    'Box Inners',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display Client Information
              Text(
                'Client Information:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Client Name: ${widget.clientName}',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 5),
              Text(
                'Business Details: ${widget.businessDetails}',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 5),
              Text(
                'Industry: ${widget.industry}',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 30),

              // Box Type Dropdown
              Text(
                'Select Box Type:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: selectedBoxType,
                hint: Text('Please select a box type'),
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBoxType = newValue;
                  });
                },
                items: boxTypes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),

              // Packaging Accessories Dropdown
              Text(
                'Packaging Accessories:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: selectedPackagingAccessory,
                hint: Text('Please select an accessory'),
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPackagingAccessory = newValue;
                  });
                },
                items: packagingAccessories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),

              // Display Selected Details
              Text(
                'Selected Details:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              SizedBox(height: 10),
              Text(
                selectedBoxType != null
                    ? 'Box Type: $selectedBoxType'
                    : 'Box Type: Not selected',
                style: TextStyle(
                  fontSize: 16,
                  color: selectedBoxType != null ? Colors.black87 : Colors.red,
                ),
              ),
              SizedBox(height: 10),
              Text(
                selectedPackagingAccessory != null
                    ? 'Packaging Accessory: $selectedPackagingAccessory'
                    : 'Packaging Accessory: Not selected',
                style: TextStyle(
                  fontSize: 16,
                  color: selectedPackagingAccessory != null ? Colors.black87 : Colors.red,
                ),
              ),
              SizedBox(height: 30),

              // Navigation Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Back to the previous page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/boxdetails'); // Navigate to BoxDetails
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
