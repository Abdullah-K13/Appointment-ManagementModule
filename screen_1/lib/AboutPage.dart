
import 'package:flutter/material.dart';

// class Colors {
//   static const azureBlue = Color(0xFF3E64FF);
//   Color graycolor = const Color.fromARGB(255, 207, 206, 206);
//   static const white = Color(0xffFFFFFF);
//   static const black = Color(0xff000000);
// }

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 48,
                        padding: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'About us',
                        style: TextStyle(
                            fontSize: 21, fontFamily: 'nunito-semibold'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      height: 122,
                      width: 330,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 35, right: 150),
                        child: Text(
                            'We help patients schedule doctors appointments',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'nunito')),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xFF3E64FF), // Adjust opacity as needed
                                Color(0xffFFFFFF)
                              ],
                              stops: [
                                0.3,
                                1
                              ]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Positioned(
                      left: 200,
                       
                      bottom: -10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Container(
                          width: 154,
                          height: 150,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(42.0),
                            child: Image.asset('assets/images/Logo.png',
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                      ),

                      /*child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/images/Logo.png'),
                          radius: 80,
                        ),
                      ),*/
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                    'Oslo is a healthcare App built and managed to facilitate people from far distances',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'nunito-regular',
                        color: Colors.black)),
                SizedBox(height: 10),
                Text(
                    'Specifically focusing on bringing in all clinics and hospitals under one digital platform',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'nunito-regular')),
                SizedBox(height: 10),
                Text(
                    'The App helps the patients to book doctor’s appointment based on location, specialties, doctors, name of clinic/ hospital',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'nunito-regular')),
                SizedBox(height: 15),
                Text('Follow us',
                    style: TextStyle(
                        color: Color(0xFF3E64FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'nunito-bold')),
                Text('Keep up with the latest from us',
                    style: TextStyle(
                        color: Color(0xFF3E64FF), fontFamily: 'nunito')),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        SizedBox(width: 110),
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          child: Image.asset('assets/images/instagram.png'),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          child: Image.asset('assets/images/twitter.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text('Appointment Management System',
                    style: TextStyle(
                      fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'nunito-bold')),
                Text('Project Team Roles',
                
                    style: TextStyle(
                      fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'nunito-bold')),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'UI/UX Design:'
                  ),
                    TeamMember(name: 'M. Abdullah Khan'),
                    SizedBox(height: 10),
                    SectionTitle(title: 'Database Management:'),
                    TeamMember(name: 'Tooba Areej'),
                    SizedBox(height: 10),
                    SectionTitle(title: 'Business Analysis:'),
                    TeamMember(name: 'Rabiya Asif'),
                    SizedBox(height: 10),
                    SectionTitle(title: 'Deployment Team:'),
                    TeamMember(name: 'M. Bilal Iqbal'),
                    TeamMember(name: 'Faiz Tanveer'),
                    SizedBox(height: 10),
                    SectionTitle(title: 'Quality Assurance:'),
                    TeamMember(name: 'Waleed'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'nunito'
          //color: Colors,
          ),
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;

  TeamMember({required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(name)],
    );
  }
}

/*return Container(
      color: const Color.fromARGB(255, 207, 206, 206),
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 50,
                  color: Colors.azureBlue,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'About us',
                  style: TextStyle(fontSize: 21),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 110,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Positioned(
                left: 200,
                //bottom: 1,
                child: Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.azureBlue,
                    // backgroundImage: AssetImage('assets/images/'),
                    radius: 100,
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );*/
