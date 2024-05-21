import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'apifunctions.dart';

class report extends StatelessWidget {
  var reportid;
    TransformationController _transformationController = TransformationController();
  double _currentScale = 1.0;

  report(this.reportid);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 218, 217),
      body: Expanded(

              child: InteractiveViewer(
                transformationController: _transformationController,
                minScale: 0.1,
                maxScale: 4.0,
                child: FutureBuilder<Map<String ,dynamic>>(
      future: apifunction().fetchSpecificReportsData(reportid),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData)  {
          // Display the data in a ListView
          final data = snapshot.data!;
        print(data['testname']);
        final item = data[0];
          return  Stack(
                              children: [
                                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 750, // Adjusted height for Pixel 7 screen
                    width: 450,  // Adju/ Adjusts the width to 80% of the screen width
                    child: Image.asset(
                      'assets/images/report1.png',
                      fit: BoxFit.contain,  // Ensures the image is contained within the given dimensions
                    ),
                  ),
                                ),
                            
                                SizedBox(height: 10),
                                // Positioned(
                                //   left: 79,
                                //   top: 248,
                                //   child: Row(
                                //     children: [
                                //       Text(
                                //         'Female',
                                //         style: TextStyle(
                                //           fontFamily: 'Poppins',
                                //           fontSize: 9,
                                //         ),
                                //       ),
                                //       SizedBox(width: 115),
                                //       Text(
                                //         '2023-06-16',
                                //         style: TextStyle(
                                //           fontFamily: 'Poppins',
                                //           fontSize: 9,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                SizedBox(height: 10),
                            
                                SizedBox(height: 10),
                                // Positioned(
                                //   left: 67,
                                //   top: 282,
                                //   child: Row(
                                //     children: [
                                //       Text(
                                //         '20',
                                //         style: TextStyle(
                                //           fontFamily: 'Poppins',
                                //           fontSize: 9,
                                //         ),
                                //       ),
                                //       SizedBox(width: 163),
                                //       Text(
                                //         '0309289302',
                                //         style: TextStyle(
                                //           fontFamily: 'Poppins',
                                //           fontSize: 9,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                SizedBox(height: 10),
                                Positioned(
                  left: 68,
                  top: 290,
                  child:Text(
                   // item['refby'],
                    data['refby']
                    ,style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 9,
                    ),
                  ),
                                ),
                                SizedBox(height: 10),
                                Positioned(
                  left: 287,
                  top: 415,
                  child:Text(
                    data['child1'],
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 7,
                    ),
                  ),
                                ),
                                SizedBox(height: 20),
                                Positioned(
                  left: 287,
                  top: 455,
                  child:Text(
                    data['child2'],
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 7,
                    ),
                  ),
                                ),
                                SizedBox(height: 20),
                                Positioned(
                  left: 285,
                  top: 493,
                  child:Text(
                    data['child3'],
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 7,
                    ),
                  ),
                                ),
                                SizedBox(height: 100),
                                Positioned(
                  left: 40,
                  top: 332,
                  child:Text(
                    data['testname'].toString(),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                                ),
                                Positioned(
                  left: 16,
                  top: 40,
                  child:GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(10),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child:Icon(Icons.arrow_back,color: Colors.white,) ,
                    ),
                  )
                                ),
                                Positioned(
                  left: 95,
                  top: 247,
                  child: Row(
                    children: [
                      Container(
                     //   color: Colors.green,
                        width: 110,
                        child: Text(
                          username.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 9,
                          ),
                        ),
                      ),
                      SizedBox(width: 45),
                      Text(
                        data['reportid'].toString(),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                                ),
                                SizedBox(height: 10),
                                Positioned(
                  left: 70,
                  top: 262,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        child: Text(
                          usergender ,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 9,
                          ),
                        ),
                      ),
                      SizedBox(width: 113),
                      Text(
                        data['testdate'],
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                                ),
                                SizedBox(height: 10),
                                Positioned(
                  left: 55,
                  top: 276,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        child: Text(
                          userage.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 9,
                          ),
                        ),
                      ),
                      SizedBox(width: 145),
                      Text(
                        usercontact.toString(),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 9,
                        ),
                      ),
                    ],
                  ),
                                ),
                                Padding(
                                padding: const EdgeInsets.all(45.0),
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                Container(
                                width: 65,
                                margin: EdgeInsets.only(right: 5),
                                child: Column(
                            children: <Widget>[
                              SizedBox(height: 355),
                              Text(
                                data['component1'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                              ),
                              SizedBox(height: 30),
                              Text(
                                data['component2'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                              ),
                              SizedBox(height: 30),
                              Text(
                                data['component3'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
                              ),
                            ],
                                ),
                                ),
                            SizedBox(width: 30),
                                Container(
                                width: 40,
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                            children: <Widget>[
                              SizedBox(height: 355),
                              Text(
                               data['result1'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                              ),
                              SizedBox(height: 30),
                              Text(
                                data['result2'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                              ),
                              SizedBox(height: 30),
                              Text(
                                data['result3'],
                                style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
                              ),
                            ],
                                ),
                                ),
                            SizedBox(width:10 ),
                            
                            Container(
                              width: 40,
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                children: <Widget>[
                  SizedBox(height: 355),
                  Text(
                    data['unit1'],
                    style: TextStyle(fontSize: 9.0), // Adjust font size for row 1
                  ),
                  SizedBox(height: 30),
                  Text(
                    data['unit2'],
                    style: TextStyle(fontSize: 9.0), // Adjust font size for row 2
                  ),
                  SizedBox(height: 30),
                  Text(
                    data['unit3'],
                    style: TextStyle(fontSize: 9.0), // Adjust font size for row 3
                  ),
                                ],
                              ),
                            ),
                            SizedBox(width:27),
                            
                            Container(
                              width: 73,
                              margin: EdgeInsets.only(right: 0),
                              child: Column(
                                children: <Widget>[
                  SizedBox(height: 349),
                  Text(
                    data['adult1'],
                    style: TextStyle(fontSize: 7.0), // Adjust font size for row 1
                  ),
                  SizedBox(height: 32),
                  Text(
                    data['adult2'],
                    style: TextStyle(fontSize: 7.0), // Adjust font size for row 2
                  ),
                  SizedBox(height: 27),
                  Text(
                    data['adult3'],
                    style: TextStyle(fontSize: 7.0), // Adjust font size for row 3
                  ),
                                ],
                              ),
                            ),
                            SizedBox(width:10 ),
                            
                            
                              ]
                            
                                ),
                                ),
                            
                              ],
                            );
               }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        )
        ),
      ),

     
    );
  }
}