import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const azureBlue = Color(0xFF3E64FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Record App',
      theme: ThemeData(
        primaryColor: azureBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HealthRecordForm(),
    );
  }
}

class HealthRecordForm extends StatefulWidget {
  @override
  _HealthRecordFormState createState() => _HealthRecordFormState();
}

class _HealthRecordFormState extends State<HealthRecordForm> {
  TextEditingController nameController = TextEditingController(text: 'John Doe');
  TextEditingController fatherNameController = TextEditingController(text: 'David Doe');
  TextEditingController emailController = TextEditingController(text: 'john.doe@example.com');
  TextEditingController healthConditionController = TextEditingController(text: 'Good');
  TextEditingController weightController = TextEditingController(text: '70');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Record Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailField('Name', nameController),
            _buildDetailField("Father's Name", fatherNameController),
            _buildDetailField('Email Address', emailController),
            _buildDetailField('Health Condition', healthConditionController),
            _buildDetailField('Weight', weightController),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the edit screen or perform any action needed for editing
                    // For demonstration purposes, we'll just print a message
                    print('Editing...');
                  },
                  child: Text('Edit'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: MyApp.azureBlue,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the previous screen
                    Navigator.pop(context);
                  },
                  child: Text('Return'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: MyApp.azureBlue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          controller.text,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}