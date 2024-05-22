import 'package:flutter/material.dart';
import 'package:screen_1/DashBoard%20copy.dart';

class welcomescreen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(1).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 120,
            left: 90,
            child: Column(
              children: [
                Container(
                    height: 70,
                    width: 240,
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                       ),
                       onPressed: () {
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen2()),
  );                         
                         // Add your onPressed logic here.
                       },
                       child: Row(
                         children: [
                           SizedBox(width: 30,),
                           const Text('Get Started',style: TextStyle(fontFamily: 'nunito-extrabold',fontSize: 20,color: Colors.white),),
                        SizedBox(width: 10,),
                        Image.asset('assets/icons/arrowforward.png')
                         ],
                       ),
                     ),
                   ),
             
              ],
            ),
          ) ,
          
        ],
      )
    );
  }
}


class welcomescreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(2).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), 
       
        blurRadius: 20, 
        offset: Offset(0, 7), 
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen3()),
  );      
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 55,
                  left: 30,
                  child: GestureDetector(
              onTap: () =>                       Navigator.pop(context),

                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 68,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}



class welcomescreen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(3).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), // Shadow color
       // spreadRadius: 8, // Spread radius
        blurRadius: 20, // Blur radius
        offset: Offset(0, 7), // Offset
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen4()),
  );       // Add your onPressed logic here.
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 41,
                  left: 30,
                  child: GestureDetector
                  (
                    onTap: () =>                       Navigator.pop(context)
,
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 54,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}




class welcomescreen4 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(4).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), // Shadow color
       // spreadRadius: 8, // Spread radius
        blurRadius: 20, // Blur radius
        offset: Offset(0, 7), // Offset
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen5()),
  );      // Add your onPressed logic here.
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 46,
                  left: 30,
                  child: GestureDetector(
                    onTap: () =>                      Navigator.pop(context)
,
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 58,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}


class welcomescreen5 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(5).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), // Shadow color
       // spreadRadius: 8, // Spread radius
        blurRadius: 20, // Blur radius
        offset: Offset(0, 7), // Offset
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen6()),
  );      // Add your onPressed logic here.
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 43,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                                            Navigator.pop(context);

                    },
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 55,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}



class welcomescreen6 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomescreen(6).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), // Shadow color
       // spreadRadius: 8, // Spread radius
        blurRadius: 20, // Blur radius
        offset: Offset(0, 7), // Offset
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>welcomescreen7()),
  );     // Add your onPressed logic here.
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 43,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                                            Navigator.pop(context);

                    },
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 55,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}





class welcomescreen7 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:  Image.asset('assets/images/Welcomsecreen(7).png',fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            left: 55,
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 300,
                     decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.5), // Shadow color
       // spreadRadius: 8, // Spread radius
        blurRadius: 20, // Blur radius
        offset: Offset(0, 7), // Offset
      ),
    ],
                     ),
                    child:  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: const Color(0xFF0E67B8),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       onPressed: () {
                        // Add your onPressed logic here.
                        print('i am on the last screen');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard(),));
                       },
                       child:  Image.asset('assets/icons/arrowforward.png')

                     ),
                   ),
             
              ],
            ),
          ) ,
          
                Positioned(
                  top: 43,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);

                    },
                    child: Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF313A34)
                    ),
                    borderRadius: BorderRadius.circular(18),
                    
                                  ),
                                ),
                                child: Image.asset('assets/icons/arrowback.png') ,
                    ),
                  ),
                )
          ,Positioned(
            top: 55,
            right: 30,
            child: Text('Skip',style: TextStyle(fontFamily: 'nunito',fontSize: 18,color:Color(0xFF313A34) ),))
        ],
      )
    );
  }
}







