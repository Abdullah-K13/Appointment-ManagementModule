
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_1/Appforsomeoneelse.dart';
import 'package:screen_1/BrowseDoctors.dart';
import 'package:screen_1/DoctorsInfo.dart';
import 'package:screen_1/Paymentfortests.dart';
import 'package:screen_1/apifunctions.dart';
import 'package:intl/intl.dart';
import 'package:screen_1/upper_middle_footer.dart';
List<String> timeSlotsforthispage = [];
var selectedDate = '2010-02-13';
List<String> timefromdata=[];

void removeTimeslots(timed ) {
  //var testime = timed['TimeofVisit'];
print('the time for this slot is $timed');
  if(timed == Null){
    print('im in the null condition');
    timed = '00:30:00';
  }
timeSlotsforthispage = [];
timeSlotsforthispage = timeSlots;
  //print(dataoftime[0]);
  for (int i = 0; i < timeSlotsforthispage.length; i++) {

    DateTime time2 =DateTime.parse( '1970-01-01 $timed');
    String finaltime = DateFormat('hh:mm a').format(time2);
    print(finaltime);

     if (timeSlotsforthispage[i] == finaltime) {
        print('i am in the if condition');
        timeSlotsforthispage.removeAt(i);
      }

  }
 // print(timeSlotsforthispage);
}


List<DateTime> getNext10Days() {
  List<DateTime> dates = [];
  DateTime today = DateTime.now();
  for (int i = 0; i < 10; i++) {
    dates.add(today.add(Duration(days: i)));
  }

  return dates;
}

class BookTest extends StatefulWidget{

  @override
  State<BookTest> createState() => _BookTeststate();
}

class _BookTeststate extends State<BookTest> {
  var selectedtestdate;
  var selectedtesttime;
  var type;
 var newshiftStart;
 var newshiftend; 
String? selectedAge;
String? selectedappointment;
var age;
var name;
var app_time;
var app_date;
var gender;
var complain = 'None';
  List<int> selecteddateindices = [];
  
 bool isSelectedtesttimeslot = false;
 int selectedtestIndex = -1;

 // List<int> selectedtimeindices = [];

List<DateTime> bookedTimeSlots = [];

  @override
  void initState() {
    super.initState();
    // Call function to fetch and display available time slots
  }
List<String> testtimeslots = ['9:00 AM','10:00 AM','11:00 AM','12:00 AM','1:00 PM','2:00 PM','3:00 PM','4:00 PM','5:00 PM','6:00 PM','7:00 PM','8:00 PM'];
List<String> ages = ['10-20', '21-30', '31-40', '41-50', '51-60', '61-70', '71-80', '81-90', '91-100'];
List<String> appointmentfor = ['Myself', 'Someone Else'];
int _Selectedtimeindex = -1;
 int _selectedIndex = -1;
int selecteddate = -1;
//  TextEditingController namecontroller = TextEditingController();
  TextEditingController complaincontroller = TextEditingController();
var selectedgender ;
List<DateTime> next10Days = getNext10Days();






  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 217, 217),
      body: Container(
        color: const Color.fromARGB(255, 73, 59, 59),
       // height: 100,
        child: Container(
      color: Color.fromARGB(255, 218, 217, 217),
      //height: 100,
     child:
      
       SingleChildScrollView(
         child: Column(
          children: [

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                          color: Color(0xFF3E64FF),
               
              ),
              child:
               Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70,right: 0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,bottom: 55),
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
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
                        ),
                     
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width:225 ,
                      child: Text(
                          textAlign: TextAlign.center,
               
                                'Book Your Test',
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
                  ),
                 
                      ],
                    )
                ),       
            
                ]
              )
          
            )
          , 
          Container(
              height: 150,
              width: double.infinity,
             // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Padding(
          padding: const EdgeInsets.only(left: 15,top: 10),
          child: Text(
                    'May, 2024',
                                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'nunito-extrabold',
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: -0.32,
                                  )),
               ),
               SizedBox(height: 9,)
               
               ,
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                    child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     
                             children:
                             
                              List.generate(10, (index) {
                               bool isSelected = selecteddateindices.contains(index);
                             // var item = data[index];
                                     return GestureDetector(
                    onTap: () {
                    selectedtestdate = DateFormat('yyyy-MM-dd').format(next10Days[index]);
                                    //  var testtime = item['TimeofVisit'];
                                     // removeTimeslots(testtime);
                      setState(() {
                        if (isSelected)
                        selecteddateindices.remove(index);
                        else
                          selecteddateindices = [index];
                      });
                      print(selectedDate.toString());
                    },
                     child: Padding(
                               padding: const EdgeInsets.only(left:12),
                               child: Container(
                                 width: 70, // Adjust the width as needed
                                 height: 95, // Adjust the height as needed
                                 decoration: BoxDecoration(
                                 color:isSelected? Color(0xFF3E64FF): const Color.fromARGB(255, 252, 252, 252),
                                 borderRadius: BorderRadius.circular(15)
                                 ),
                                 child: Center(
                                   child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                                            DateFormat('d').format(next10Days[index]),
                                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: isSelected? const Color.fromARGB(255, 255, 255, 255): const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 33,
                                fontFamily: 'museo500',
                               // fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: -0.32,
                                            )),
                     
                                            SizedBox(height: 5,),
                                            Text(
                                            DateFormat('EE').format(next10Days[index]),
                                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: isSelected? const Color.fromARGB(255, 255, 255, 255): const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                fontFamily: 'actor',
                               // fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: -0.32,
                                            )),
                      ],
                                   ),
                                 ),
                               ),
                     ),
                                     );
                             }),

                                     ),
                  )
                ],
              ),
              
              ),
             Container(
          width: MediaQuery.of(context).size.width,
       //   color: Colors.lightGreen,
          child: 
          GridView.count(
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true,
  crossAxisCount: 4,
  childAspectRatio: 2.2,
  padding: const EdgeInsets.all(16.0),
  mainAxisSpacing: 16.0,
  crossAxisSpacing: 10.0,
  children: testtimeslots.asMap().entries.map((entry) {
    final index = entry.key;
    final testtimeslot = entry.value; 
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the color when tapped
          selectedtestIndex = index;
          selectedtesttime = testtimeslot;
         // isSelectedtesttimeslot = !isSelectedtesttimeslot;
        });
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: selectedtestIndex == index ? Color(0xFF3E64FF): Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            testtimeslot,
            style: TextStyle(
              fontFamily: 'museo500',
              color: selectedtestIndex == index ? Colors.white : Colors.black,
              fontWeight: FontWeight.w100,
              fontSize: 18,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }).toList(),
)

   
    // } else {
    //   // Display a loading indicator while waiting for data
    //   return CircularProgressIndicator();
    // }



               )
         ,
         
               Container(
          width: double.infinity,
        //       color: const Color.fromARGB(255, 30, 169, 233),
               child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text(
                      'Patient Details',
                                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontFamily: 'nunito-semibold',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.32,
                                    )),
               ),
                 
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
           Center(
          child: Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)
          
            ),
            child:

DropdownButton<String>(
  
  value: selectedappointment,
  items: appointmentfor.map<DropdownMenuItem<String>>((String value2) {
    return DropdownMenuItem<String>(
      value: value2,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 10,),
          Text(value2),
          SizedBox(width: 240), // Add a gap between the text and the icon
          //Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      selectedappointment = newValue!;
      print(selectedappointment);
    if(selectedappointment == 'myself'){
      print('imhere232');
      someoneelse();
    }
    });

  },
),)
              
               ),
         Padding(
           padding: const EdgeInsets.only(top: 80,bottom: 20),
           child: Center(
             child: Container(
              height: 60,
              width: 300,
              child:  ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   primary: const Color(0xFF0E67B8),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(35.0),
                   ),
                 ),
                 onPressed: () {
                   var testid;
                   var charges;
                        if(selctedtest == 'Blood-analysis Test')
                        {
                          testid = 19;
                          charges = 2500;
                        }
                        else if(selctedtest == 'Thyroid-gland Test'){
                          testid = 15;
                          charges = 2800;
                        }
                         else if(selctedtest == 'Liver Test'){
                          testid = 16;
                          charges = 3400;
                        }
                         else if(selctedtest == 'Urine Test'){
                          testid = 2;
                          charges = 2000;
                        }
                         else if(selctedtest == 'Lipid Test'){
                          testid = 18;
                          charges = 3200;
                        }
                         else if(selctedtest == 'Kidney Test'){
                          testid = 17;
                          charges = 3000;
                        }
                  print(selectedtestdate);
                  print(selectedtesttime);
                  print(selectedappointment);
 if(selectedappointment == 'Myself'){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Paymentfortests(selectedappointment,selectedtestdate,selectedtesttime)),
  );                      }
                   else if (selectedappointment ==  'Someone Else'){
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>appointmentforsomeoneelse('test',selectedtestdate,selectedtesttime,testid)),
  );     }
  else if( selectedtestdate == null || selectedtesttime == null){
     final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Please date or time',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  else{
    final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Please choose patient details',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
              
                 },
                 child: Row(
                   children: [
                     SizedBox(width: 80,),
                     const Text('Proceed',style: TextStyle(fontFamily: 'nunito-extrabold',fontSize: 20,color: Colors.white),),
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/arrowforward.png')
                   ],
                 ),
               ),
             ),
           ),
         )
          ],
               ),
         )
         
          ]
            ),
       )
       

        ),


    )
    );
  }
}

class someoneelse extends StatelessWidget{

  
   @override
  Widget build(BuildContext context) {
  print('i am in someoneelses class');
  
    return Container(
      width: double.infinity,
      height: 300,
      color: Colors.green,
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

        hintText: hintText, hintStyle: TextStyle(
          color: Color.fromARGB(255, 31, 29, 29),
          fontFamily: 'actor'
          
          ),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),

      ),
    );
  }
}

