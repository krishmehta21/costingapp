import 'package:flutter/material.dart';

class ProjectDetails extends StatefulWidget {
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
              const SizedBox(height: 20), // Spacer

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
              const SizedBox(height: 30), // Spacer for bottom section

              // Display selected values at the bottom
              Text(
                'Selected Details:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),
              selectedBoxType != null
                  ? Text(
                      'Box Type: $selectedBoxType',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    )
                  : Text(
                      'Box Type: Not selected',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
              const SizedBox(height: 10),
              selectedPackagingAccessory != null
                  ? Text(
                      'Packaging Accessory: $selectedPackagingAccessory',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    )
                  : Text(
                      'Packaging Accessory: Not selected',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
              const SizedBox(height: 30),

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
