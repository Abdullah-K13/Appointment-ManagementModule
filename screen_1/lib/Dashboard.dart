import 'package:flutter/material.dart';

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  
  {
    return Scaffold(
      body: Container(
        child: Column(children: [
           Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      color: Color(0xFF3E64FF),
          ),
           ),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                    child: Text(
                          'Booking for?',
                                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontFamily: 'nunito-extrabold',
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.32,
                                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(150.0),
                    child: Container(color: Colors.red,
                    
                    child: Image.asset('assets/icons/appointmenticon.png',fit: BoxFit.fill,),),
                  )
              ],
            ),


        ],),
      ),
    );
  }
}