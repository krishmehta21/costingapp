import 'package:flutter/material.dart';

class BoxDetails extends StatefulWidget {
  @override
  _BoxDetailsState createState() => _BoxDetailsState();
}

class _BoxDetailsState extends State<BoxDetails> {
  // Controllers for L, B, H input fields
  TextEditingController lengthController = TextEditingController();
  TextEditingController breadthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  // Variables to store calculated dimensions
  String boxSizeCm = '';
  String boxSizeInches = '';
  String stickerSizeCm = '';
  String stickerSizeInches = '';
  int quantity = 0;

  // Function to convert cm to inches
  double cmToInches(double cm) {
    return cm / 2.54;
  }

  // Function to calculate dimensions
  void calculateDimensions() {
    double l = double.tryParse(lengthController.text) ?? 0.0;
    double b = double.tryParse(breadthController.text) ?? 0.0;
    double h = double.tryParse(heightController.text) ?? 0.0;

    // Calculate Box Dimensions (L + 2H) x (B + 2H)
    double boxLength = l + 2 * h;
    double boxBreadth = b + 2 * h;
    boxSizeCm = '${boxLength.toStringAsFixed(2)} cm x ${boxBreadth.toStringAsFixed(2)} cm';
    boxSizeInches = '${cmToInches(boxLength).toStringAsFixed(2)} in x ${cmToInches(boxBreadth).toStringAsFixed(2)} in';

    // Calculate Sticker Dimensions (L + 2H + 3 cm) x (B + 2H + 3 cm)
    double stickerLength = l + 2 * h + 3;
    double stickerBreadth = b + 2 * h + 3;
    stickerSizeCm = '${stickerLength.toStringAsFixed(2)} cm x ${stickerBreadth.toStringAsFixed(2)} cm';
    stickerSizeInches = '${cmToInches(stickerLength).toStringAsFixed(2)} in x ${cmToInches(stickerBreadth).toStringAsFixed(2)} in';

    // Calculate Quantity with Buffer
    quantity = (int.tryParse(quantityController.text) ?? 0) + 250;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box and Sticker Details'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Box Size (L, B, H) input fields
              Text('Box Size (LxBxH) in CM:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: lengthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Length (L in CM)'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: breadthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Breadth (B in CM)'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: heightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Height (H in CM)'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Sticker Size section
              Text('Sticker Size Calculation:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                'Formula: (L + 2H) x (B + 2H), then add 3 cm to each dimension',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 20),

              // Quantity section (allow user to input quantity)
              Text('Quantity:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: quantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter Quantity'),
              ),
              SizedBox(height: 20),

              // Calculate Button
              ElevatedButton(
                onPressed: calculateDimensions,
                child: Text('Calculate'),
              ),
              SizedBox(height: 20),

              // Display the calculated dimensions
              Text('Calculated Box Size:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('In CM: $boxSizeCm', style: TextStyle(fontSize: 16)),
              Text('In Inches: $boxSizeInches', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),

              Text('Calculated Sticker Size:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('In CM: $stickerSizeCm', style: TextStyle(fontSize: 16)),
              Text('In Inches: $stickerSizeInches', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),

              Text('Quantity with extra:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('$quantity', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
