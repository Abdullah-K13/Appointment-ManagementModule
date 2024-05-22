import 'package:flutter/material.dart';

class TestTile extends StatelessWidget {
  final String testIcon; // Change type to String
  final String testName;
  final bool isSelected;

  TestTile({required this.testIcon, required this.testName, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF3E64FF) : Colors.white, // Change background color based on selection
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(testIcon, width: 60, height: 60), // Use Image.asset instead of Icon
          Text(
            testName,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, // text color based on selection
              fontSize: 14, // Text size
              fontWeight: isSelected ? FontWeight.bold : FontWeight.bold, // Apply bold font weight if selected
              fontFamily: 'nunito-extrabold',
            ),
          ),
        ],
      ),
    );
  }
}
