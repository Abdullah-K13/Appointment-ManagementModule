import 'package:flutter/material.dart';

class UpperPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xFF3E64FF),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 35,
            left: 25,
            child: GestureDetector(
              onTap: () {
                // Handle back button tap
                Navigator.pop(context);
              },
              child: Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Colors.white),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: MediaQuery.of(context).size.width / 2 - 125,
            child: Container(
              width: 250,
              child: Text(
                'Medical History',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito-ExtraBold',
                  letterSpacing: -0.01,
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  // Handle search text bar
                },
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      // Handle search functionality
                    },
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search your history...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}