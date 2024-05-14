import 'package:flutter/material.dart';
import 'test_tile.dart';

class UpperMiddleFooter extends StatefulWidget {
  @override
  _UpperMiddleFooterState createState() => _UpperMiddleFooterState();
}

class _UpperMiddleFooterState extends State<UpperMiddleFooter> {
  List<String> testIcons = [
    'assets/images/icons8-laboratory-32.png',
    'assets/images/icons8-heart-monitor-32.png',
    'assets/images/icons8-allergy-32.png',
    'assets/images/icons8-lungs-32.png',
    'assets/images/icons8-brain-32.png',
    'assets/images/icons-dna-32.png',
  ];
  List<String> tests = [
    'Laboratory Test',
    'Imaging Test',
    'Allergy Test',
    'Pulmonary Test',
    'Neuro Test',
    'DNA Test',
  ];
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          UpperPart(),
          MiddlePart(
            testIcons: testIcons,
            tests: tests,
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Footer(
            onPressed: () {
              // Handle done button functionality
              print("Done button pressed");
            },
          ),
        ],
      ),
    );
  }
}

class UpperPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
            top: 15,
            left: 6,
            child: GestureDetector(
              onTap: () {
                // Handle back button tap
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
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 112.5,
            child: Container(
              width: 225,
              child: Text(
                'Select Test',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'nunito-extrabold',
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: -0.32,
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity, // Set the width to expand to the available space
                child: TextField(
                  onChanged: (value) {
                    // Handle search text bar
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        // Handle filter list tap
                      },
                      child: Icon(Icons.filter_list),
                    ),
                    hintText: 'Search...',
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
          ),
        ],
      ),
    );
  }
}


class MiddlePart extends StatelessWidget {
  final List<String> testIcons;
  final List<String> tests;
  final int? selectedIndex;
  final void Function(int)? onTap;

  MiddlePart({
    required this.testIcons,
    required this.tests,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.2, // Change aspect ratio to make tiles size
        ),
        itemCount: tests.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onTap!(index),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10), // padding
              child: TestTile(
                testIcon: testIcons[index],
                testName: tests[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final VoidCallback onPressed;

  Footer({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 225,
            height: 50,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3E64FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: Text(
                'Done',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'nunito-extrabold',
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: -0.32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
