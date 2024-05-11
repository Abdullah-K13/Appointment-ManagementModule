import 'package:flutter/material.dart';
import 'upper_middle_footer.dart';

class Select_Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpperMiddleFooter(),
          ],
        ),
      ),
    );
  }
}
