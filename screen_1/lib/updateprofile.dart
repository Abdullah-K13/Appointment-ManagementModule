import 'package:flutter/material.dart';
import 'package:screen_1/apifunctions.dart';

// class Colors {
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
//   static const red = Color(0xffFF0000);
// }
TextEditingController _nameController = TextEditingController();
TextEditingController _Agecontroller = TextEditingController();
TextEditingController _EmailController = TextEditingController();
TextEditingController _PasswordController = TextEditingController();
TextEditingController _GenderController = TextEditingController();
TextEditingController _PhoneNumberController = TextEditingController();
TextEditingController _EmergencyController = TextEditingController();
TextEditingController _AddressController = TextEditingController();

void controllers_intialization()  {

FutureBuilder<Map<String, dynamic>>(
          future: apifunction().testpatientinfo(UserID),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // Display an error message if fetching data failed
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              // Display different widgets based on the data
              var data = snapshot.data!;
             // print(data);
              print(data['FullName']);
              print(data['Gender']);

return Container(height: 0,
width: 0,);
    }
    else{
      return Text('Error: ${snapshot.error}');
    }
  }
 );
 

}

class TryPage extends StatefulWidget {
  @override
  State<TryPage> createState() => _TryPageState();
}

class _TryPageState extends State<TryPage> {

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
          future: apifunction().testpatientinfo(UserID),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // Display an error message if fetching data failed
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              // Display different widgets based on the data
              var data = snapshot.data!;
           
_nameController = TextEditingController(text: data['Name']);
_EmailController = TextEditingController(text: data['EmailAddress']);
_PasswordController = TextEditingController(text: data['Password']);
_GenderController = TextEditingController(text: data['Gender']);
_PhoneNumberController = TextEditingController(text: data['ContactInformation']);
_EmergencyController = TextEditingController(text: data['EmergencyContact']);
_AddressController = TextEditingController(text: data['Address']);
_Agecontroller = TextEditingController(text: data['Age'].toString());

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
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,bottom: 60),
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
                     
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 260),
                      child: Text('Full Name',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                          height: 40,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              border:
                                  UnderlineInputBorder(borderSide: BorderSide.none),
                              prefixIcon: Icon(Icons.person),
                            ),
                          )),
                    ),
                    SizedBox(height: 10),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 210),
                      child: Text('Email Address',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _EmailController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.email),
                          ),
                        )),
                   SizedBox(height: 10), 
                   
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text('Password',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _PasswordController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                        )),
                   
                    SizedBox(height: 10),
                     
                    Padding(
                      padding: const EdgeInsets.only(right: 280),
                      child: Text('Age',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _Agecontroller,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.view_agenda),
                          ),
                        )),
                   
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 265),
                      child: Text('Gender',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _GenderController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.male),
                          ),
                        )),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text('Phone Number',
                          style: TextStyle(
                            
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _PhoneNumberController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.phone),
                          ),
                        )),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 165),
                      child: Text('Emergency Number',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _EmergencyController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.phone),
                          ),
                        )),
                    SizedBox(height: 10),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text('Address',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'nunito-semibold')),
                    ),
                    Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: _AddressController,
                          decoration: InputDecoration(
                            border:
                                UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.location_on),
                          ),
                        )),
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

                     apifunction().UpdatepatientsInformation(_nameController.text, _Agecontroller.text, _GenderController.text, _AddressController.text,_PhoneNumberController.text,_EmergencyController.text, 4,_EmailController.text,_PasswordController.text);
                        //  controllers_intialization();
                        },
                        child: Text(
                          'View Health Record',
                          style: TextStyle(
                              fontSize: 18,
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
}

/*
(
        body: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 207, 206, 206),
            child: Column(
              children: [
                Text('location'),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      height: 35,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(21)),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Fullname',
                          focusedBorder: OutlineInputBorder(),
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.person),
                        ),
                      )),
                ),
                SizedBox(height: 10),
                Container(
                    height: 35,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(21)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Fullname',
                        focusedBorder: OutlineInputBorder(),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.person),
                      ),
                    )),
              ],
            )));*/
