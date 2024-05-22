import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class test extends StatelessWidget{
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF3E64FF),
        centerTitle: true,
        //title: const Text('PharmaFriend'),
        title: Row(
          children: [
             GestureDetector(
              onTap: () {
                
              },
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
                           child:Icon(Icons.arrow_back,color: Colors.white,) ,
                  ),
             ),
             SizedBox(width: 45,),
            Text(
              'PharmaFriend',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30,
                fontFamily: 'nunito-extrabold',
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.32,
              ),
            ),
          ],
        ),

        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              iconSize: 36,
              onPressed: () {},
            ),
          ),
        ],

        
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
       
      ),
    );
  }
// testing hai yeh

}


class RoundedTextField extends StatelessWidget {
  final String hintText;
  TextEditingController controller;

  // const RoundedTextField({Key? key, required this.hintText,this.icondata}) : super(key: key);

RoundedTextField(this.hintText,this.controller);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      controller: controller,
      decoration: InputDecoration(
       // prefixIcon: Icon(icondata,color: Color(0xFF800020),),
        
        hintText: hintText, hintStyle: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontFamily: 'actor'
          
          ),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: const Color.fromARGB(255, 248, 249, 249)),
        ),
      ),
    );
  }
}

