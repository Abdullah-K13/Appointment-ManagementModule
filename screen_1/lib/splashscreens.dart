import 'package:flutter/material.dart';
import 'package:screen_1/sign_in_screen.dart';

class splash2 extends StatefulWidget{

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
 @override
 void initState() {
    // TODO: implement initState
    super.initState();

  Future.delayed(Duration(seconds: 2), () {
    Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context) => SignInScreen()));
  });}

@override
Widget build(BuildContext context){

  return Scaffold(
    body:Container(
   height: double.infinity,
   width: double.infinity,
   child: Image.asset('assets/images/Splash(1).png',fit: BoxFit.fill,),
    )
  );
}
}
