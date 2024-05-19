import 'package:flutter/material.dart';
import 'package:screen_1/ScheduleTest.dart';
import 'package:screen_1/apifunctions.dart';
import 'package:screen_1/appointment_screen.dart';
import 'package:screen_1/main.dart';
import 'package:intl/intl.dart';
import 'package:screen_1/medicalhistory%20copy.dart';
import 'package:screen_1/settings_screen.dart';

// class Colors {
//   static const Blue = Color(0xFF0A76D8);
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  PageController _pageController = PageController();

  var tempdid;

@override
  void initState() {
    super.initState();
    // Initialize your data or perform any setup here
   setState(() {
     
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Color.fromARGB(255, 207, 206, 206),
      color: Color(0xffFFFFFF),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xFF3E64FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 15),
                      child: Row(
                        children: [
                          //hello saad //bell icon
                          SizedBox(width: 140,),
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
                                    'assets/images/whitelogo.png',
                                  ),
        ),
                          SizedBox(width: 90),
                          GestureDetector(
                            onTap: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>SettingsScreen()),
  ),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Color(0xFF3E64FF)
                              ,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(Icons.settings,color:Colors.white,size: 33,)
                                // Image.asset(
                                //   'assets/images/settings.png',
                                // ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,top: 25),
                       child: Text('Welcome to Emerald Care Hospital ',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'nunito-semibold',
                                  fontWeight: FontWeight.w500,
                                 // height: -100,
                                  letterSpacing: -0.32,
                                )),
                     ),
                             
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 0, right: 0, left: 20),
                      child: Text("Let's find your top doctor! ",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'nunito-semibold',
                            fontWeight: FontWeight.w500,
                           // height: -100,
                            letterSpacing: -0.32,
                          )),
                    ),
                   
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 55,
                            width: 350,
                            margin: EdgeInsets.only(left: 0.0),
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(21)),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                prefixIcon: Icon(Icons.search),
                              ),
                            )),
                       
                      ],
                    )
                  ],
                )),
        
          //  SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text('Services',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'nunito-semibold',
                    fontWeight: FontWeight.w500,
                  //  height: -100,
                    letterSpacing: -0.32,
                  )),
            ),
            SizedBox(height: 10),
            // idher se firat row of circles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Select_specialization()),
          ),   
                    child: Container(
                      width: 87,
                      height: 88,
                      color: Color(0xFF3E64FF),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/images/steth.png',
                        ),
                      ),
                    ),
                  ),
                ),
        
                //Text('Doctors Appointment', style: TextStyle(fontSize: 12)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: Container(
                    width: 87,
                    height: 88,
                    color: Color(0xFF3E64FF),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/prescription.png',
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: Container(
                    width: 87,
                    height: 88,
                    color: Color(0xFF3E64FF),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/consultant.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Appointment',style: TextStyle(fontFamily: 'poppins-medium'),),
                Text('Prescription',style: TextStyle(fontFamily: 'poppins-medium'),),
                Text('Consultant',style: TextStyle(fontFamily: 'poppins-medium'),),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentScreen()));
                    },
                    child: Container(
                      width: 87,
                      height: 88,
                      color: Color(0xFF3E64FF),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/images/test.png',
                        ),
                      ),
                    ),
                  ),
                ),
        
                //Text('Doctors Appointment', style: TextStyle(fontSize: 12)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: Container(
                    width: 87,
                    height: 88,
                    color: Color(0xFF3E64FF),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/lab.png',
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: GestureDetector(
                    onTap: () {
                      print('object');
                     // medicalhistorynew()
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>medicalhistorynew()),
  );  
                    },
                    child: Container(
                      width: 87,
                      height: 87,
                      color:Color(0xFF3E64FF),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset(
                          'assets/images/medhis.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Test Scheduling',style: TextStyle(fontFamily: 'poppins-medium'),),
                Text('Lab Reports',style: TextStyle(fontFamily: 'poppins-medium'),),
                Text('Medical History',style: TextStyle(fontFamily: 'poppins-medium'),),
              ],
            ),
            //SizedBox(height: 5),
            
        //Text('sad'),
        
              Padding(
                padding: const EdgeInsets.only(left: 20,top:10, bottom: 10 ),
                child: Text('Appointments',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'nunito-semibold',
                      fontWeight: FontWeight.w500,
                     // height: -100,
                     // letterSpacing: -0.32,
                    )),
              ),
            
            //DATE OF THE APPOINTMENT
        
        //SizedBox(height: 50,),
        FutureBuilder<List< dynamic>>(
          future: apifunction().appointinfo(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
          //    print('am i here');
        // Display an error message if fetching data failed
        return Text('Error: no data');
            }
            
            else if(snapshot.hasData == Null)
            {
          return 
       Text('Error: no data'); 
            }
             else if (snapshot.hasData) {
        // Extract the data from the snapshotas
          final data = snapshot.data!;
         //  print('i was here');
        //   print(data[0]);
        return  Container(
            width: 450,
            height: 150,
            //color: Colors.red,
            child: PageView.builder(
                                          controller: _pageController,
                                          itemCount: data.length,
                                          itemBuilder: (_, i) {
                                    final item = data[i] ;

                                          tempdid = item['drID'];
                                            return
            
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Stack(
                    children: [
                       Container(
                       // margin: EdgeInsets.only(left: 10, top: 10),
                        width: 370, height: 150,
                        //color: Colors.red,
                        child: Image.asset('assets/images/innershadowbox.png',fit: BoxFit.fill,),
                       
                       ),
                       Positioned(
                        left: 30,
                        top: 20,
                         child: Row(
                           children: [
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Container(
                                  height: 40,
                                 // color: Colors.red,
                                   child: Text(
                                                     // datetime.strptime(item['dateofvisit'].toString(), '%Y-%m-%d'),
                                              DateFormat('dd').format(DateTime.parse(item['DateOfVisit'].toString())),
                                  
                                                     style: TextStyle(
                                                       decoration: TextDecoration.none,
                                                       color: Colors.black,
                                                       fontSize: 35,
                                                       fontFamily: 'poppins-medium',
                                                       fontWeight: FontWeight.w500,
                                                      // height: -100,
                                                      // letterSpacing: -0.32,
                                                     )),
                                 ),
                           
                                Center(
                                 child: Container(
                                   width: 80,
                                   height: 40,
                                  //color: Colors.red,
                                   child: FittedBox(
                                     fit: BoxFit.contain,
                                     child: Text(
                                       DateFormat('MMMM').format(DateTime.parse(item['DateOfVisit'].toString())),
                                       style: TextStyle(
                                         decoration: TextDecoration.none,
                                         color: Colors.black,
                                         fontFamily: 'poppins-regular',
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
           
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  width: 50,
                                  height: 25,
                                 // color: Colors.red,
                                  child: Text(DateFormat('E').format(DateTime.parse(item['DateOfVisit'].toString())),
                                                    style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'poppins-regular',
                                                    //  fontWeight: FontWeight.w500,
                                                     // height: -100,
                                                     // letterSpacing: -0.32,
                                                    )),
                                ),
                              ),   
                             ],),
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              
                             Text(
                              item['TimeOfVisit'].toString(),
                              //  DateFormat('h a').format(DateFormat('HH:mm:ss').parse(item['TimeOfVisit'].toString())),
                                                     style: TextStyle(
                                                       decoration: TextDecoration.none,
                                                       color: Colors.black,
                                                       fontSize: 18,
                                                       fontFamily: 'poppins-medium',
                                                       fontWeight: FontWeight.w500,
                                                      // height: -100,
                                                      // letterSpacing: -0.32,
                                                     )),
                              FutureBuilder<List< dynamic>>(
          future: apifunction().fetchdoctorsinfobyid(tempdid),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('am i here');
        // Display an error message if fetching data failed
        return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
        // Extract the data from the snapshotas
          final data = snapshot.data!;
         // print(data);
          final item = data[0] ;
          print(item['doctorname'].toString());
        return  Text(item['doctorname'].toString(),
                                                       style: TextStyle(
                                                         decoration: TextDecoration.none,
                                                         color: Colors.black,
                                                         fontSize: 20,
                                                         fontFamily: 'poppins-semibold',
                                                         fontWeight: FontWeight.w500,
                                                        // height: -100,
                                                        // letterSpacing: -0.32,
                                                       ));
                                    
            }
              else
            return CircularProgressIndicator();
            }
                              ),
                                          
          
                              FutureBuilder<List< dynamic>>(
          future: apifunction().fetchdoctorsinfobyid(1),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('am i here');
        // Display an error message if fetching data failed
        return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
        // Extract the data from the snapshotas
          final data = snapshot.data!;
          final item = data[0] ;
        //  print(item['Specialty'].toString());
        return                                Text(item['Specialization'].toString(),
                                                       style: TextStyle(
                                                         decoration: TextDecoration.none,
                                                         color: Colors.black,
                                                         fontSize: 15,
                                                         fontFamily: 'poppins-medium',
                                                         fontWeight: FontWeight.w500,
                                                        // height: -100,
                                                        // letterSpacing: -0.32,
                                                       ));
                              
            }
            else
            return CircularProgressIndicator();
          }
                              )
                            ],),
                          )
                           ],
                         ),
                       )
                     ],
                  ),
                );
             
                                      
                                          }
            ),
          );
            }
          else
            return CircularProgressIndicator();
          }
          
        )
        
          ],
        ),
      ),
    ));
  }
}

