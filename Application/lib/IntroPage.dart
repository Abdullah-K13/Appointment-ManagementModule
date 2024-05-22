import 'package:flutter/material.dart';

// class Colors {
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 207, 206, 206),
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF3E64FF), // Adjust opacity as needed
                    Color(0xffFFFFFF)
                  ],
                  stops: [
                    0.3,
                    1
                  ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Health Record Overview',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontFamily: 'nunito-medium',
                  ),
                ),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                        'Your Health Records',
    textAlign: TextAlign.center, // Set textAlign to TextAlign.center
                        style: TextStyle(
                          
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 24,
                          fontFamily: 'nunito-semibold',
                         // fontWeight: FontWeight.w800,
                          height: 0,
                          //letterSpacing: -0.32,
                        )),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            child: Row(children: [
              Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(left: 60),
                child: 
               
                           Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
                        'Medications',
    textAlign: TextAlign.center, // Set textAlign to TextAlign.center
                        style: TextStyle(
                          
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontFamily: 'nunito-semibold',
                         // fontWeight: FontWeight.w800,
                          height: 0,
                          //letterSpacing: -0.32,
                        )),
),                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                                child: Image.asset('assets/images/Capsules.png'),
                              ),
                            ],
                          ),
                        
                
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ]),
              ),
              SizedBox(
                width: 45,
              ),
              Container(
                height: 120,
                width: 120,
               // color: Colors.red,
               
                          child:
                           Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
                        'Detailed Diagnosis',
    textAlign: TextAlign.center, // Set textAlign to TextAlign.center
                        style: TextStyle(
                          
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontFamily: 'nunito-semibold',
                         // fontWeight: FontWeight.w800,
                          height: 0,
                          //letterSpacing: -0.32,
                        )),
),                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30,top: 5),
                                child: Image.asset('assets/images/Diagram.png'),
                              ),
                            ],
                          ),
                        
                        
                    
                
                
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      )
                    ]),
              )
            ]),
          ),
          SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 60),
            child: Row(children: [
              Container(
                height: 120,
                width: 120,
                child:
                           Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
                        'Appointments',
    textAlign: TextAlign.center, // Set textAlign to TextAlign.center
                        style: TextStyle(
                          
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontFamily: 'nunito-semibold',
                         // fontWeight: FontWeight.w800,
                          height: 0,
                          //letterSpacing: -0.32,
                        )),
),                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                                child: Image.asset('assets/images/Waiting room.png'),
                              ),
                            ],
                          ),
                        
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [BoxShadow(blurRadius: 2)]),
              ),
              SizedBox(width: 45),
              Container(
                height: 120,
                width: 120,
                child:
                 
                           Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
Padding(
  padding: const EdgeInsets.only(top: 5),
  child: Text(
                        'Lab reports',
    textAlign: TextAlign.center, // Set textAlign to TextAlign.center
                        style: TextStyle(
                          
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontFamily: 'nunito-semibold',
                         // fontWeight: FontWeight.w800,
                          height: 0,
                          //letterSpacing: -0.32,
                        )),
),                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                                child: Image.asset('assets/images/Writing.png'),
                              ),
                            ],
                          ),
                        
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [BoxShadow(blurRadius: 2)]),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
