import 'package:flutter/material.dart';

// class Colors {
//   static const Blue = Color(0xFF0A76D8);
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }

class DashBoard extends StatelessWidget {
  PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Color.fromARGB(255, 207, 206, 206),
      color: Color(0xffFFFFFF),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Row(
                      children: [
                        //hello saad //bell icon

                        Text('Hello ',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'nunito-semibold',
                              fontWeight: FontWeight.w500,
                             // height: -100,
                              letterSpacing: -0.32,
                            )),
                        Text('Saad! ',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'nunito',
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            //  height: -100,
                              letterSpacing: -0.32,
                            )),
                        SizedBox(width: 220),
                        Container(
                          width: 45,
                          height: 45,
                          color: Color(0xFF3E64FF)
                          ,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/images/settings.png',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,top: 25),
                     child: Text('Welcome to ',
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
                               padding: const EdgeInsets.only(left: 20),
                               child: Text('Emerald Care Hospital',
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
                  SizedBox(height:10 ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 0, right: 0, left: 20),
                    child: Text("Let's find ",
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
                    padding: const EdgeInsets.only(right: 0, left: 20),
                    child: Text("your top doctor! ",
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
                          height: 45,
                          width: 300,
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
                      Container(
                        margin: EdgeInsets.only(right: 0.0),
                        height: 35,
                        width: 35,
                        child: Icon(Icons.tune, color: Colors.white),
                      )
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
                  },
                  child: Container(
                    width: 87,
                    height: 88,
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
Container(
  width: 450,
  height: 150,
  //color: Colors.red,
  child: PageView.builder(
                                      controller: _pageController,
                                      itemCount: 3,
                                      itemBuilder: (_, i) {
                                       // Map<String, dynamic> itemData = data[i];
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
                               child: Text('29',
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
                                 'May',
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
                              child: Text('Tue',
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
                          
                         Text('12:00 PM',
                                                 style: TextStyle(
                                                   decoration: TextDecoration.none,
                                                   color: Colors.black,
                                                   fontSize: 18,
                                                   fontFamily: 'poppins-medium',
                                                   fontWeight: FontWeight.w500,
                                                  // height: -100,
                                                  // letterSpacing: -0.32,
                                                 )),
                          Text('Dr. Salman Sheikh',
                                                 style: TextStyle(
                                                   decoration: TextDecoration.none,
                                                   color: Colors.black,
                                                   fontSize: 20,
                                                   fontFamily: 'poppins-semibold',
                                                   fontWeight: FontWeight.w500,
                                                  // height: -100,
                                                  // letterSpacing: -0.32,
                                                 )),
                          Text('Dermatologist',
                                                 style: TextStyle(
                                                   decoration: TextDecoration.none,
                                                   color: Colors.black,
                                                   fontSize: 15,
                                                   fontFamily: 'poppins-medium',
                                                   fontWeight: FontWeight.w500,
                                                  // height: -100,
                                                  // letterSpacing: -0.32,
                                                 )),
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
)

        ],
      ),
    ));
  }
}

