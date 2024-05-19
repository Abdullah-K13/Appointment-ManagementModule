import 'package:flutter/material.dart';
import 'package:screen_1/apifunctions.dart';
import 'upper_part.dart';
import 'section_part.dart';



class medicalhistorynew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 207, 206, 206),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UpperPart(),
              SizedBox(height: 20),
              FutureBuilder<List<dynamic>>(
      future: apifunction().fetchpatientallergies(UserID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // Display the data in a ListView
          final data = snapshot.data!;
       // print(data);
              print(data);
              List<String> allergies=[];
              List<String> levels = [];
              for (int i = 0; i<data.length;i++){
                allergies.add(data[i]['Allergy']);
                levels.add(data[i]['Level']);
              }
              print(data[0]['Allergy']);
              print(allergies);
            
          return 
                 SectionPart(
                  title: 'Allergies',
                 // date: 'Monday, 27 March 2023',
                  headingName: 'Allergies',
                  totalRecords: data.length,
                  sampleData: allergies,
                  sampleStatus:levels,
                );
              
              
            
        }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        ),
              SizedBox(height: 20),
             FutureBuilder<List<dynamic>>(
      future: apifunction().fetchpatientdisease(UserID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // Display the data in a ListView
          final data = snapshot.data!;
       // print(data);
              print(data);
              List<String> disease=[];
              List<String> levels = [];
              for (int i = 0; i<data.length;i++){
                disease.add(data[i]['Disease'].toString());
                levels.add(data[i]['levels'].toString());
              }
              //print(data[0]['Allergy']);
              print(disease);

          return  SectionPart(
                  title: 'Diseases',
                //  date: 'Wednesday, 10 April 2023',
                  headingName: 'Disease',
                  totalRecords: data.length,
                  sampleData: disease,
                  sampleStatus: levels,
                );
                  
        }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        ),

              SizedBox(height: 20),
              FutureBuilder<List<dynamic>>(
      future: apifunction().fetchongoingtreatiments(UserID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // Display the data in a ListView
          final data = snapshot.data!;
       // print(data);
              print(data);
              List<String> treatments=[];
              List<String> status = [];
              for (int i = 0; i<data.length;i++){
                treatments.add(data[i]['Treatment'].toString());
                status.add(data[i]['Status'].toString());
              }
              print(data[0]['Allergy']);
              print(treatments);

          return  SectionPart(
                  title: 'Ongoing Treatments',
                             //   date: 'Thursday, 11 April 2023',
                  headingName: 'Treatments',
                  totalRecords: data.length,
                  sampleData: treatments,
                 // sampleDoctor: ['Dr. Waseem', 'Dr. Nadeem', 'Dr. Yusra'],
                  sampleStatus: status,
                );
                       
        }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        ),
              SizedBox(height: 20),
            ],
          ),
        ),
      );
  
  
  }
}


