//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:screen_1/apifunctions.dart';

// class Colors {
//   static const Blue = Color(0xFF0A76D8);
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }

class Prescription1 extends StatefulWidget {
  @override
  _PrescriptionScreenState createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<Prescription1> {
  String selectedDoctor = '';
  String prescription = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 207, 206, 206),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color(0xFF3E64FF),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, bottom: 10
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(12),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                            width: 225,
                            child: Text(
                                textAlign: TextAlign.center,
                                'Prescription',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontFamily: 'nunito-extrabold',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                 // letterSpacing: -0.32,
                                ))),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 300,
                        margin: EdgeInsets.only(left: 55, top: 20),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.black),
                              suffixIcon:
                                  Icon(Icons.tune, color: Colors.black)),
                        )),
                  ],
                )
              ]),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,top: 10),
              child: Text(
                'Selected Doctor: $selectedDoctor',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,
                fontFamily: 'nunito-semibold'
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
      future: apifunction().fetchprescriptioninfo(UserID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // Display the data in a ListView
          final data = snapshot.data!;
         
        print(data);

          return  ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                     final item = data[index];
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedDoctor = item['drname'] as String;
                              prescription =
                                  item['prescription'] as String;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 325,
                            //margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(item['drname'] ?? '',
                                style: TextStyle(fontFamily: 'nunito-regular',fontWeight: FontWeight.w600),
                                ),
                              ),
                              subtitle:
                                  Text(item['appointmentdate'].toString() ?? '',
                                  style: TextStyle(fontFamily: 'poppins-regular'),),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.0)
                      ],
                    );
                  },
                );
              }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        )
            ),
            Visibility(
              visible: prescription.isNotEmpty,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Prescription:\n$prescription',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Color(0xFF3E64FF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, String>> doctors = [
    {
      'name': 'Dr. John Doe',
      'appointmentDate': 'May 15, 2024',
      'prescription': 'Take this medicine twice a day for a week.',
    },
    {
      'name': 'Dr. Jane Smith',
      'appointmentDate': 'May 20, 2024',
      'prescription': 'Apply this ointment to the affected area.',
    },
    // Add more doctor data here...
  ];
}

/*
class Prescription1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 207, 206, 206),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Color(0xFF3E64FF),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 35),
                      child: Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Container(
                          width: 225,
                          child: Text(
                              textAlign: TextAlign.center,
                              'Prescription',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'nunito-semibold',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.32,
                              ))),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      height: 40,
                      width: 300,
                      margin: EdgeInsets.only(left: 35.0, top: 15),
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            suffixIcon: Icon(Icons.tune, color: Colors.black)),
                      )),
                ],
              )
            ]),
          )
        ],
      ),
    ));
  }
}

*/
