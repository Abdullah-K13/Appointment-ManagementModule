import 'package:flutter/material.dart';
import 'package:screen_1/Appforsomeoneelse.dart';
import 'package:screen_1/BookAppointment.dart';
import 'package:screen_1/BrowseDoctors.dart';
import 'package:screen_1/DashBoard%20copy.dart';
import 'package:screen_1/Dashboard.dart';
import 'package:screen_1/DoctorsInfo.dart';
import 'package:screen_1/IntroPage.dart';
import 'package:screen_1/ScheduleTest.dart';
import 'package:screen_1/Select_Test.dart';
import 'package:screen_1/TryPage.dart';
import 'package:screen_1/sign_in_screen.dart';
import 'package:screen_1/sing_up_Screen.dart';
import 'package:screen_1/sing_up_Screen.dart';
import 'package:screen_1/tesclassss.dart';
import 'package:screen_1/splashscreens.dart';
import 'package:screen_1/test.dart';
import 'package:screen_1/testforsomeoneelse.dart';
import 'package:screen_1/upper_middle_footer.dart';
import 'package:screen_1/welcomescreens.dart';
import 'package:screen_1/AboutPage.dart';
void main() {
  runApp(const MyApp());
}

var Specialization;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 103, 136, 123)),
        useMaterial3: true,
      ),
      home: Select_specialization(),
    );
  }
}

class Select_specialization extends StatefulWidget{

  @override
  State<Select_specialization> createState() => _Select_specializationState();
}

class _Select_specializationState extends State<Select_specialization> {
 var _isTapped = false;
 int _selectedIndex = -1;

@override
Widget build(BuildContext context) {

return Container(
  color: const Color.fromARGB(255, 73, 59, 59),
  height: 100,
  child: Container(
    color: Color.fromARGB(255, 207, 206, 206),
    height: 100,
    child: Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      color: Color(0xFF3E64FF),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60,right: 320),
                child:
                
                Container(
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
            child:Icon(Icons.arrow_back,color: Colors.white,) ,
                )
          
            ),
            SizedBox(height: 10,),
              Container(
                //width:300 ,
                child: Text(
            'Select Specialization',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 36,
              fontFamily: 'nunito-extrabold',
              fontWeight: FontWeight.w800,
              height: 0,
              letterSpacing: -0.32,
            )),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  width: 260,
                  child: Text("Select before booking appointment"  ,style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "nunito-semibold",color: const Color.fromARGB(255, 249, 249, 249),
                  fontSize: 23,fontWeight: FontWeight.w100),),
                ),
              ),

            ],
          ),
        ),
        Container(height: 617,
        //color: const Color.fromARGB(255, 0, 0, 0),
        child:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
          SizedBox(width: 16,),
          Column(
            children: [
          SizedBox(height: 20,),



GestureDetector(
  onTap: () {
    setState(() {
      _selectedIndex = 0;
    });
  },
  child: Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: _selectedIndex == 0 ? Color(0xFF3E64FF) : Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 53,
            height: 53,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 227, 227),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/heart.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Cardiologist",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _selectedIndex == 0 ? Colors.white : Colors.black,
              fontFamily: "nunito-semibold",
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  ),
),

SizedBox(height: 20),

GestureDetector(
  onTap: () {
    setState(() {
      _selectedIndex = 1;
    });
  },
  child: Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: _selectedIndex == 1 ? Color(0xFF3E64FF) : Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 227, 227),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/teeth.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Teeth",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _selectedIndex == 1 ? Colors.white : Colors.black,
              fontFamily: "nunito-semibold",
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  ),
),

SizedBox(height: 20),

GestureDetector(
  onTap: () {
    setState(() {
      _selectedIndex = 2;
    });
  },
  child: Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: _selectedIndex == 2 ? Color(0xFF3E64FF) : Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 227, 227),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/virus.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Virologist",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _selectedIndex == 2 ? Colors.white : Colors.black,
              fontFamily: "nunito-semibold",
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  ),
),

SizedBox(height: 20),

GestureDetector(
  onTap: () {
    setState(() {
      _selectedIndex = 3;
    });
  },
  child: Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: _selectedIndex == 3 ? Color(0xFF3E64FF) : Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 227, 227),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/stethoscope.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Physicians",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
              fontFamily: "nunito-semibold",
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  ),
),

SizedBox(height: 20),

GestureDetector(
  onTap: () {
    setState(() {
      _selectedIndex = 4;
    });
  },
  child: Container(
    width: 180,
    height: 80,
    decoration: BoxDecoration(
      color: _selectedIndex == 4 ? Color(0xFF3E64FF) : Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 227, 227),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/brain.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Psychiatrists",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _selectedIndex == 4 ? Colors.white : Colors.black,
              fontFamily: "nunito-semibold",
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  ),
),   
            
            ],
          )
               ,
               SizedBox(width: 22,),
          Column(
            children: [
          SizedBox(height: 20,),
             GestureDetector(
              onTap: () {
                 setState(() {
      _selectedIndex = 5;
    });
              },
               child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                         color: _selectedIndex == 5 ? Color(0xFF3E64FF) : Colors.white,
                         borderRadius: BorderRadius.circular(20)
                         
                ),
               child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(width: 50,height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/icons/barbell.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Physiologist",style: TextStyle(
                            decoration: TextDecoration.none,
                            color: _selectedIndex == 5 ? Colors.white : Colors.black,
                            fontFamily: "nunito-semibold",fontSize: 18),),
                        ),
                       
                      ],
                    ),
                
               ),
             ),
            
            SizedBox(height: 20),
             GestureDetector(
               onTap: () {
                 setState(() {
      _selectedIndex = 6;
    });
              },
               child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                         color: _selectedIndex == 6 ? Color(0xFF3E64FF) : Colors.white,
                         borderRadius: BorderRadius.circular(20)
                         
                ),
               child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(width: 50,height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/icons/clinic.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Clinic",style: TextStyle(
                            decoration: TextDecoration.none,
                            color:_selectedIndex == 6 ? Colors.white : Colors.black,
                            fontFamily: "nunito-semibold",fontSize: 18),),
                        ),
                       
                      ],
                    ),
                
               ),
             ),
             SizedBox(height: 20),
             GestureDetector(
              onTap: () {
                 setState(() {
      _selectedIndex = 7;
    });
              },
               child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                         color: _selectedIndex == 7 ? Color(0xFF3E64FF) : Colors.white,
                         borderRadius: BorderRadius.circular(20)
                ),
               child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(width: 50,height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/icons/pills.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Pharmacist",style: TextStyle(
                            decoration: TextDecoration.none,
                            color:_selectedIndex == 7 ? Colors.white : Colors.black,
                            fontFamily: "nunito-semibold",fontSize: 18),),
                        ),
                       
                      ],
                    ),
                
               ),
             ),
            SizedBox(height: 20),
             GestureDetector(
                    onTap: () {
                 setState(() {
      _selectedIndex = 8;
    });
              },
               child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                         color: _selectedIndex == 8 ? Color(0xFF3E64FF) : Colors.white,
                         borderRadius: BorderRadius.circular(20)
                ),
               child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(width: 50,height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/icons/apple.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Nutritionist",style: TextStyle(
                            decoration: TextDecoration.none,
                            color:_selectedIndex == 8 ? Colors.white : Colors.black,
                            fontFamily: "nunito-semibold",fontSize: 18),),
                        ),
                      ],
                    ),
               ),
             ),
            SizedBox(height: 20),
             GestureDetector(
              onTap: () {
                 setState(() {
      _selectedIndex = 9;
    });
              },
               child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                         color: _selectedIndex == 9 ? Color(0xFF3E64FF) : Colors.white,
                         borderRadius: BorderRadius.circular(20)
                         
                ),
               child:
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(width: 50,height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/icons/brain2.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Neurologist",style: TextStyle(
                            decoration: TextDecoration.none,
                            color:_selectedIndex == 9 ? Colors.white : Colors.black,
                            fontFamily: "nunito-semibold",fontSize: 18),),
                        ),
                       
                      ],
                    ),
                
               ),
             ),
            
            
            ],
          )
           
             ],
          ),
         SizedBox(height: 38,),
        Container(
  width: 250,
  height: 70,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFF0E67B8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
    ),
    onPressed: () {
    if(_selectedIndex == 0){
      Specialization = 'Cardiology';
    }
    else if(_selectedIndex == 1){
      Specialization = 'Teeth';
    }
    else if(_selectedIndex == 2){
      Specialization = 'Virologist';
    }
    else if(_selectedIndex == 3){
      Specialization = 'Physicians';
    }
    else if(_selectedIndex == 4){
      Specialization = 'Psychiatrists';
    }
    else if(_selectedIndex == 5){
      Specialization = 'Physiologist';
    }
    else if(_selectedIndex == 6){
      Specialization = 'Clinic';
    }
     else if(_selectedIndex == 7){
      Specialization = 'Pharmacist';
    }
 else if(_selectedIndex == 8){
      Specialization = 'Nutritionist';
    }
 else if(_selectedIndex == 9){
      Specialization = 'Neurology';
    }

 else 
     print('no specialization chosen');


    print(Specialization);
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>BrowseDoctors()));
      // Add your onPressed logic here.
    },
    child: Row(
      children: [
        SizedBox(width: 10,),
        const Text('Search Doctors',style: TextStyle(fontFamily: 'nunito-extrabold',fontSize: 20,color: Colors.white),),
     SizedBox(width: 10,),
     Image.asset('assets/icons/arrowforward.png')
      ],
    ),
  ),
)
        ],
      )
        ),
    
      ],
    ),
  ),
);    
  }
}