import 'package:flutter/material.dart';
import 'package:screen_1/main.dart';
import 'package:screen_1/apifunctions.dart';
import 'package:screen_1/DoctorsInfo.dart';
import 'package:screen_1/report.dart';
var DrID ;
class Browsereports extends StatelessWidget{
  TextEditingController searchcontroller = TextEditingController();
var reportid;
@override
  Widget build(BuildContext context) {
return Scaffold(
  body: Container(

    color: const Color.fromARGB(255, 219, 218, 217),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          
          decoration: BoxDecoration(
            color: Color(0xFF3E64FF),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 80,
              width: double.infinity,
             // color: Color(0xFF3E64FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 GestureDetector(
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
                                   side: BorderSide(width: 1, color: Colors.white),
                                   borderRadius: BorderRadius.circular(18),
                                 ),
                               ),
                               child:Icon(Icons.arrow_back,color: Colors.white,) ,
                                   ),
                 ),
                SizedBox(width: 15,),
Text(
            'Browse Reports',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 36,
              fontFamily: 'nunito-extrabold',
              fontWeight: FontWeight.w800,
              height: 0,
              letterSpacing: -0.32,
            )),
                ],
              ),),
              Container(width: 350,height: 50,
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
             borderRadius: BorderRadius.circular(20)
              ),
              child:
              Container(
              //  color: Color.fromARGB(255, 27, 36, 15),
               
              child:
               RoundedTextField('Search', searchcontroller),)
              )
            ],
          ),
        ),
        Container(width: double.infinity,
       height:667 ,
        color: const Color.fromARGB(255, 219, 218, 217),
        child:  FutureBuilder<List<dynamic>>(
      future: apifunction().fetchallreports(UserID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // Display an error message if fetching data failed
          return Text('Error: ${snapshot.error}');
        }
        else if(snapshot == null){
           return Text('i am null');
        }
         else if (snapshot.hasData) {
          // Display the data in a ListView
          final data = snapshot.data!;
       // print(data);

          return 
          
              ListView.builder(
              itemCount: data.length, // Replace 10 with the actual number of items in your list
              itemBuilder: (BuildContext context, int index) {
                 final item = data[index];
                
                
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25,left: 10,right: 10),
                  child:  GestureDetector(
            onTap: () {
               reportid = item['reportid'];
               print(reportid);
              DrID = item['drID'];
              print('the doctors id is: $DrID');
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>report(reportid)),
                );
            },
                    child: Container(
                    height: 150,
                    width: 10,
                    decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20) ,
                         color: const Color.fromARGB(255, 255, 255, 255)
                    ),
                    child: Column(
                      children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 20,right: 0),
                                                child: Container(
                                                  width: 300,
                                                  child: Text(
                                                                      //      textAlign: TextAlign.center,
                                                                 
                                                                                  username.toString(),
                                                                                  style: TextStyle(
                                                                      decoration: TextDecoration.none,
                                                                      color: const Color.fromARGB(255, 0, 0, 0),
                                                                      fontSize: 23,
                                                                      fontFamily: 'nunito-extrabold',
                                                                      fontWeight: FontWeight.w800,
                                                                      height: 0,
                                                                      letterSpacing: -0.32,
                                                                      
                                                                                  )),
                                                ),
                                              ),
  Padding(
    padding: const EdgeInsets.only(right: 0,bottom: 10),
    child: Container(
      width: 300,
     // color: Colors.green,
      child: Text(
                            //  textAlign: TextAlign.center,
                   
                                    item['testname'],
                                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'nunito-extrabold',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.32,
                        
                                    )),
    ),
  ),                        Container(
                          color: Colors.blue,
                          height: 2,
                          width: 300,
                        ),
  Padding(
    padding: const EdgeInsets.only(top: 10,left: 24),
    child: Row(
      children: [
        SizedBox(width: 20,),
                                      Icon(Icons.calendar_month,color: Color.fromARGB(255, 0, 0, 0),size: 18,),
        Text(
                              //  textAlign: TextAlign.center,
                     
                                      item['testdate'],
                                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'nunito-extrabold',
                          fontWeight: FontWeight.w800,
                          height: 0,
                          letterSpacing: -0.32,
                          
                                      )),
                                      SizedBox(width: 20,),
                       Icon(Icons.access_time,color: Color.fromARGB(255, 0, 0, 0),size: 20,),
    
                                           Text(
                               // textAlign: TextAlign.center,
                     
                                      item['testtime'],
                                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'nunito-extrabold',
                          fontWeight: FontWeight.w800,
                          height: 0,
                          letterSpacing: -0.32,
                          
                                      )),
      ],
    ),

  ),
    Padding(
      padding: const EdgeInsets.only(left: 240),
      child: Text(
                                  textAlign: TextAlign.center,
                       
                                        'View Details',
                                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 19,
                            fontFamily: 'nunito-extrabold',
                            fontWeight: FontWeight.w800,
                            height: 0,
                            letterSpacing: -0.32,
                            
                                        )),
    ),
                      ],

                    ),
                    ),
                  ),
                );
              },
                       
                     );
           
        
        }
        else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        } 

      }
        )
        )
      ],
    ),
  )
,
);

  }

}



class RoundedTextField extends StatelessWidget {
  final String hintText;
  TextEditingController controller;

  // const RoundedTextField({Key? key, required this.hintText,this.icondata}) : super(key: key);
RoundedTextField(this.hintText,this.controller);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      controller: controller,
      decoration: InputDecoration(
           border: UnderlineInputBorder(borderSide: BorderSide.none),
         //  prefixIcon:  Icon(Icons.search, size: 24),
      
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 31, 29, 29),
          fontFamily: 'actor'
          ),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      ),
    );
  }
}

