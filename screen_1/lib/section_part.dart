import 'package:flutter/material.dart';

class SectionPart extends StatelessWidget {
  final String title;
 // final String date;
  final String headingName;
  final int totalRecords;
  final List<String> sampleData;
  final List<String> sampleStatus;
  //final List<String> sampleDoctor;

  SectionPart({
    required this.title,
   // required this.date,
    required this.headingName,
    required this.totalRecords,
    required this.sampleData,
    required this.sampleStatus,
  //  this.sampleDoctor = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                 
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    headingName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                 
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Record',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(192, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '$totalRecords',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(192, 0, 0, 0),
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(width: 45),
                ],
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                sampleData.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String data = entry.value;
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(flex: 2, child: Text(data)),
                        //if (sampleDoctor.isNotEmpty && idx < sampleDoctor.length)
                          //Expanded(flex: 2, child: Text(sampleDoctor[idx])),
                        Expanded(flex: 1, child: Text(sampleStatus[idx])),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
