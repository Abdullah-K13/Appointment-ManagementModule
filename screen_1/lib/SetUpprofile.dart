import 'package:flutter/material.dart';
import 'package:screen_1/BookAppointment.dart';
import 'package:screen_1/DashBoard%20copy.dart';
import 'package:screen_1/apifunctions.dart';

// class Colors {
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }

void controllers_intialization()  {

// FutureBuilder<Map<String, dynamic>>(
//           future: testpatientinfo(2),
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               // Display an error message if fetching data failed
//               return Text('Error: ${snapshot.error}');
//             } else if (snapshot.hasData) {
//               // Display different widgets based on the data
//               var data = snapshot.data!;
//              // print(data);
//               print(data['FullName']);
//               print(data['Gender']);

// return Container(height: 0,
// width: 0,);
//     }
//     else{
//       return Text('Error: ${snapshot.error}');
//     }
//   }
//  );
 

}

class SetUp extends StatefulWidget {
var email;
var password;

SetUp(this.email,this.password);
  @override
  State<SetUp> createState() => _setupstate(this.email,this.password);
}

class _setupstate extends State<SetUp> {
  var email;
var password;

TextEditingController _nameController = TextEditingController();
TextEditingController _Agecontroller = TextEditingController();
TextEditingController _PhoneNumberController = TextEditingController();
TextEditingController _EmergencyController = TextEditingController();
TextEditingController _AddressController = TextEditingController();

_setupstate(this.email,this.password);

  String? Selectedgender;
List<String> choosegender = ['Male', 'Female'];
  @override
  void initState() {
    // Call super.initState() to ensure that the parent class's initState method is called.
    super.initState();
  //  controllers_intialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 207, 206, 206),
            child: SingleChildScrollView(
              child:   
FutureBuilder<Map<String, dynamic>>(
          future: testpatientinfo(1),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // Display an error message if fetching data failed
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              // Display different widgets based on the data
              var data = snapshot.data!;
              // print('heelooo abdullah data is');
              // print(data['FullName']);
              // print(data['Gender']);
              // print(data['Age']);


          return
                Column(
                  children: [
                   
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                            color: Color(0xFF3E64FF),
                          ),
                          child: Container(
                            //margin: const EdgeInsets.only(top: 30),
                            child: 
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 25, bottom: 65),
                                    child: GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1, color: Colors.white),
                                            borderRadius: BorderRadius.circular(18),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  
                                  Column(
                                    children: [
                                       Padding(
                                        padding: const EdgeInsets.only(left: 0,bottom: 0),
                                        child: Text(
                                             // textAlign: TextAlign.center,
                                              'Set Up',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.white,
                                                fontSize: 35,
                                                fontFamily: 'nunito-semibold',
                                                fontWeight: FontWeight.w500,
                                               // height: -100,
                                                //letterSpacing: -0.32,
                                              )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0,bottom: 0),
                                        child: Text(
                                             // textAlign: TextAlign.center,
                                              'Profile Information',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.white,
                                                fontSize: 35,
                                                fontFamily: 'nunito-semibold',
                                                fontWeight: FontWeight.w500,
                                               // height: -100,
                                                //letterSpacing: -0.32,
                                              )),
                                      ),
                                    ],
                                  ),
                                
                                ],
                              ),
                            ),
                          
                          ),
                        ),
                        // Positioned(
                        //   left: 110,
                        //   top: 80,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(65),
                        //     child: Container(
                        //       width: 130,
                        //       height: 130,
                        //       color: Colors.white,
                        //       child: Image.asset('assets/images/av.png',
                        //           fit: BoxFit.fitWidth),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 15,),
                     Container(
                    
                      width: 350,
                      child: buildTextField('FullName', Icons.person, 'Enter Your Full name',_nameController)),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 30, right: 260),
                    //   child: Text('Full Name',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 5),
                    //   child: Container(
                    //       height: 40,
                    //       width: 350,
                    //       decoration: BoxDecoration(
                    //           color: Color(0xffFFFFFF),
                    //           borderRadius: BorderRadius.circular(15)),
                    //       child: TextField(
                    //         controller: _nameController,
                    //         decoration: InputDecoration(
                    //           border:
                    //               UnderlineInputBorder(borderSide: BorderSide.none),
                    //           prefixIcon: Icon(Icons.person),
                    //         ),
                    //       )),
                    // ),
                    SizedBox(height: 10),
                      Container(
                    
                      width: 350,
                      child: buildTextField('Age', Icons.view_agenda, 'Enter Your Age',_Agecontroller)),
               
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 280),
                    //   child: Text('Age',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Container(
                    //     height: 40,
                    //     width: 350,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffFFFFFF),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: TextField(
                    //       controller: _Agecontroller,
                    //       decoration: InputDecoration(
                    //         border:
                    //             UnderlineInputBorder(borderSide: BorderSide.none),
                    //         prefixIcon: Icon(Icons.view_agenda),
                    //       ),
                    //     )),

                    SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 265),
                    //   child: Text('Gender',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Container(
                    //     height: 40,
                    //     width: 350,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffFFFFFF),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: TextField(
                    //       controller: _GenderController,
                    //       decoration: InputDecoration(
                    //         border:
                    //             UnderlineInputBorder(borderSide: BorderSide.none),
                    //         prefixIcon: Icon(Icons.male),
                    //       ),
                    //     )),
                      Padding(
                        padding: const EdgeInsets.only(right: 280,bottom: 2),
                        child: Text(
                                  'Gender',
                                  style: TextStyle(
                                    fontFamily: 'poppins-semibold',
                                    color: Colors.black,
                                    fontSize: 18,
                                   // fontWeight: FontWeight.bold,
                                  ),
                                ),
                      ),
                    Container(
                      height: 63,
                      width: 350,
                    decoration: BoxDecoration(
                                          color: Colors.white,
                      border: Border.all(width: 0.8),
                      borderRadius: BorderRadius.circular(25),
                    
                    ),
                      //width: 350,
                      child:
DropdownButton<String>(
  
  value: Selectedgender,
  items: choosegender.map<DropdownMenuItem<String>>((String value2) {
    return DropdownMenuItem<String>(
      value: value2,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 20,),
          Text(value2),
          SizedBox(width: 240), // Add a gap between the text and the icon
          //Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      Selectedgender = newValue!;
      print(Selectedgender);
    if(Selectedgender == 'myself'){
      print('imhere232');
     // someoneelse();
    }
    });

  },
),),
      
                    SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 200),
                    //   child: Text('Phone Number',
                    //       style: TextStyle(
                            
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Container(
                    //     height: 40,
                    //     width: 350,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffFFFFFF),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: TextField(
                    //       controller: _PhoneNumberController,
                    //       decoration: InputDecoration(
                    //         border:
                    //             UnderlineInputBorder(borderSide: BorderSide.none),
                    //         prefixIcon: Icon(Icons.phone),
                    //       ),
                    //     )),
                     Container(
                    
                      width: 350,
                      child: buildTextField('Phone Number',Icons.phone, 'Enter Your Phone Number',_PhoneNumberController)),
                   
                    SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 165),
                    //   child: Text('Emergency Number',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Container(
                    //     height: 40,
                    //     width: 350,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffFFFFFF),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: TextField(
                    //       controller: _EmergencyController,
                    //       decoration: InputDecoration(
                    //         border:
                    //             UnderlineInputBorder(borderSide: BorderSide.none),
                    //         prefixIcon: Icon(Icons.phone),
                    //       ),
                    //     )),
                    Container(
                    
                      width: 350,
                      child: buildTextField('Emergency Number',Icons.phone, 'Enter Your Emergency Number',_EmergencyController)),
                   
                    SizedBox(height: 10),
                    
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 250),
                    //   child: Text('Address',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors.black,
                    //           fontFamily: 'nunito-semibold')),
                    // ),
                    // Container(
                    //     height: 40,
                    //     width: 350,
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffFFFFFF),
                    //         borderRadius: BorderRadius.circular(15)),
                    //     child: TextField(
                    //       controller: _AddressController,
                    //       decoration: InputDecoration(
                    //         border:
                    //             UnderlineInputBorder(borderSide: BorderSide.none),
                    //         prefixIcon: Icon(Icons.location_on),
                    //       ),
                    //     )),
                      Container(
                    
                      width: 350,
                      child: buildTextField('Address',Icons.location_on, 'Enter Your Address',_AddressController)),
                   
                    SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0E67B8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                        ).merge(ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(200, 60)))),
                        onPressed: () {

                         if(isValidName(_nameController.text)){
                           if(isValidAge(_Agecontroller.text)){
                             if(isValidPhoneNumber(_PhoneNumberController.text)){
                              if(isValidPhoneNumber(_EmergencyController.text)){
                                if(isValidAddress(_AddressController.text)){
                                   if (Selectedgender != null ) {
                                    postPatientsdata(_nameController.text, _Agecontroller.text, Selectedgender, email, _AddressController.text, _PhoneNumberController.text, _EmergencyController.text, password);
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>DashBoard()),
  ); 
}
else
{
 final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Address',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);}
                                  }
                                else
                                {
                                   final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Address',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                }
                              }
                              else
                               {
                                 final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Emergency Number',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                               }
                             }
                             else
                             {
 final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Phone Number',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);                              }
                           }
                           else
                           {
 final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Age',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);                           }
                           }
                         else
                          {
                              final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon
                    SizedBox(width: 8),
                    Text(
                      'Invalid Name',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
  
                          },

                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'nunito-semibold'),
                        )),
                  ],
                );
              
            }
            else 
             return CircularProgressIndicator();
            }
          )
            
          

            )            )
            );
  }
  bool isValidName(String name) {
  // Check if the name is empty
  if (name.isEmpty) {
    return false;
  }

  // Check if the name contains only alphabetic characters and spaces
  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(name)) {
    return false;
  }

  // If all criteria are met, the name is considered valid
  return true;
}

bool isValidAge(String ageString) {
  try {
    // Convert the string to an integer
    int age = int.parse(ageString);

    // Check if the age is within the valid range (0 to 149)
    if (age >= 0 && age < 150) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    // If parsing fails (e.g., the string is not a valid integer), return false
    return false;
  }
}

bool isValidPhoneNumber(String phoneNumber) {
  // Regular expression pattern for matching common phone number formats
  final RegExp phoneNumberRegex = RegExp(
    r'^\+?[\d()-.\s]+$',
    caseSensitive: false,
    multiLine: false,
  );

  // Check if the input string matches the phone number pattern
  return phoneNumberRegex.hasMatch(phoneNumber);
}

bool isValidAddress(String address) {
  // Check if the address is not empty
  if (address.isEmpty) {
    return false;
  }

  // Additional validation logic can be added here based on specific requirements

  // If all criteria are met, the address is considered valid
  return true;
}


}
  Widget buildTextField(String label, IconData icon, String hintText,TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'poppins-semibold',
            color: Colors.black,
            fontSize: 18,
           // fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 2),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextFormField(
            controller: controller,
           // obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(icon),
              // suffixIcon: isPassword
              //     ? IconButton(
              //   icon: Icon(icon),
              //   // onPressed: () {
              //   //   setState(() {
              //   //     _isPasswordVisible = !_isPasswordVisible;
              //   //   });
              //   // },
              // )
                  
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.red.shade900), // Set error border color to red
              ),
              focusedErrorBorder: OutlineInputBorder( // Define focused error border to handle focus state
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.red.shade900),
              ),
              errorStyle: TextStyle(color: Colors.red.shade800, fontSize: 14,fontWeight: FontWeight.bold),
              errorMaxLines: 2,
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );


  }

