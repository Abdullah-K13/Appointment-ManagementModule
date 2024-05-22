import 'package:flutter/material.dart';

class meidcalhistory extends StatelessWidget{

@override
Widget build(BuildContext context) {
return Scaffold(
body: Column(
children: [
   Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                          color: Color(0xFF3E64FF),
               
              ),
              child: Row(children: [
                SizedBox(width: 20,),
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
                ),
               SizedBox(width: 30,),
                 Text(
                          textAlign: TextAlign.center,
               
                                'Medical History',
                                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'nunito-extrabold',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: -0.32,
                    
                                )),
              ],),
              ),
              


],

)

);
}

}