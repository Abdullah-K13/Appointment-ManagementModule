import 'package:flutter/material.dart';
import 'package:screen_1/SetUpprofile.dart';
import 'package:screen_1/apifunctions.dart';
import 'sign_in_button.dart';

class signupscreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<signupscreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmpassword = '';
    TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
 TextEditingController emailcontroller = TextEditingController();

  bool _isPasswordVisible = false;
  bool _signInPressed = false; // Track if sign-in button has been pressed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F5F5),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/icons/logo.png')),
                  SizedBox(height: 24),
                  Text(
                    'Sign Up For Free',
                    style: TextStyle(
                      fontFamily: 'nunito-extrabold',
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sign up in 1 minute for free',
                    style: TextStyle(
                      fontFamily: 'nunito-regular',
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildTextField('Email Address', Icons.email_rounded,'Enter email address',emailcontroller),
                        SizedBox(height: 16),
                        buildTextField('Password', Icons.lock, 'Enter Password',passwordcontroller),
                          SizedBox(height: 16),

                         _confirmpwTextField('Password Confirmation', Icons.lock, true),
                        
                        SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: ()  {

                                var auth = isEmail(emailcontroller.text);
                                
                                if(auth == true){



                            if(passwordcontroller.text == confirmpassword.text){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>SetUp(emailcontroller.text,passwordcontroller.text)),
  );                    
            }
                            else 
                            {
                                final snackBar = SnackBar(
                backgroundColor: Color(0xFF800020), // Customize the background color
                content: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.white), // Warning icon.com
                    SizedBox(width: 8),
                    Text(
                      'Password does not match',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                duration: Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }


                            setState(() {
                              _signInPressed = true; // Set sign-in pressed to true
                            });
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState?.save();
                              // Handle sign-in logic here
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
                      'Invalid Email Address',
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
                            'Proceed',
                            style: TextStyle(
                              fontFamily: 'nunito-extrabold',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 5,
                            backgroundColor: Color(0xFF3E64FF), // Change button color to blue
                            minimumSize: Size(double.infinity, 20), // Set button width to match text fields
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  //    SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontFamily: 'nunito-semibold',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle sign up navigation
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
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

  Widget _confirmpwTextField(String label, IconData icon, bool isPassword) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'nunito-extrabold',
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextFormField(
            controller: confirmpassword,
            validator: (value) {
              if (_signInPressed && (value?.isEmpty ?? true)) {
                return isPassword ? 'Please enter your password' : 'Please enter your email';
              }
              return null;
            },
            obscureText: isPassword && !_isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              prefixIcon: Icon(icon),
              suffixIcon: isPassword
                  ? IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
                  : null,
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
bool isEmail(String input) {
  // Regular expression pattern for matching email addresses
  final RegExp emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
    multiLine: false,
  );
  
  // Check if the input string matches the email pattern
  return emailRegex.hasMatch(input);
}
}
