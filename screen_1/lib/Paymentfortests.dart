import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_1/BookAppointment.dart';
import 'package:screen_1/DashBoard%20copy.dart';
import 'package:screen_1/apifunctions.dart';
import 'package:screen_1/upper_middle_footer.dart';



class Paymentfortests extends StatefulWidget {
 var selecteddate;
 var selectedtime;
 var type;
 
  Paymentfortests(this.type,this.selecteddate,this.selectedtime);
  @override
  _PaymentScreenState createState() => _PaymentScreenState(this.type,this.selecteddate,this.selectedtime);
}

class _PaymentScreenState extends State<Paymentfortests> {

 var selecteddate;
 var selectedtime;
 var type;
 
  _PaymentScreenState(this.type,this.selecteddate,this.selectedtime);

  int _selectedPaymentMethod = 0; // 0 for credit card, 1 for pay at counter
  final _formKey = GlobalKey<FormState>();

  final _cardNumberController = TextEditingController();
  final _expiryDateController = TextEditingController();
  final _cvvController = TextEditingController();
  final _cardHolderNameController = TextEditingController();

  String? _validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your card number';
    }
    if (value.length != 16) {
      return 'Card number must be 16 digits';
    }
    return null;
  }

  String? _validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the expiry date';
    }
    RegExp regExp = RegExp(r'^(0[1-9]|1[0-2])\/?([0-9]{2})$');
    if (!regExp.hasMatch(value)) {
      return 'Invalid expiry date';
    }
    return null;
  }

  String? _validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the CVV';
    }
    if (value.length != 3) {
      return 'CVV must be 3 digits';
    }
    return null;
  }

  String? _validateCardHolderName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the card holder\'s name';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 206, 206),
      body: Container(
        color: Color.fromARGB(255, 207, 206, 206),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Color(0xFF3E64FF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 0),
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
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Container(
                          width: 225,
                          child: Text(
                              textAlign: TextAlign.center,
                              'Payment',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'nunito-semibold',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.32,
                              ))),
                    )
                  ],
                ),
              ),
              // .............
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Choose Payment Method',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: ListTile(
                  title: Text('Credit Card'),
                  leading: Radio(
                    value: 0,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  trailing: Icon(Icons.credit_card),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: ListTile(
                  title: Text('Pay at Counter'),
                  leading: Radio(
                    value: 1,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  trailing: Icon(Icons.store),
                ),
              ),
              SizedBox(height: 40),
              _selectedPaymentMethod == 0
                  ? _buildCreditCardForm()
                  : _buildPayAtCounterInfo(),
             // Spacer(),
             SizedBox(height: 30,),
              Container(
                height: 60,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child: ElevatedButton(
                    onPressed: () async {
                      var charges;
                        var testid;
                        if(selctedtest == 'Blood-analysis Test')
                        {
                          testid = 19;
                          charges = 2000;
                        }
                        else if(selctedtest == 'Thyroid-gland Test'){
                          testid = 15;
                           charges = 3500;
                        }
                         else if(selctedtest == 'Liver Test'){
                          testid = 16;
                           charges = 2900;
                        }
                         else if(selctedtest == 'Urine Test'){
                          testid = 2;
                           charges = 2000;
                        }
                         else if(selctedtest == 'Lipid Test'){
                          testid = 18;
                           charges = 2400;
                        }
                         else if(selctedtest == 'Kidney Test'){
                          testid = 17;
                           charges = 3000;
                        }
           

                     
                    
                       if(type == 'Myself'){
                        print(' i am in myself cond');
                      if(_selectedPaymentMethod == 0){
                        print('credit card');
                        if (_formKey.currentState?.validate() ?? false) {
                        await apifunction().posttestschedulebypatients(this.selecteddate,this.selectedtime ,testid);
                        await Future.delayed(Duration(seconds: 1));

                        await apifunction().postTestsBill('Paid',charges);
             Navigator.popUntil(context, (route) => route.isFirst,);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(),
              ),
            );
                        }
                      }
                      else{
                        print('counter');
                        await apifunction().posttestschedulebypatients(this.selecteddate,this.selectedtime , testid);
                      //  await apifunction().postPatientsdata();
                        await Future.delayed(Duration(seconds: 1));
                        await apifunction().postTestsBill('Unpaid',charges);
             Navigator.popUntil(context, (route) => route.isFirst,);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(),
              ),
            );
                      }
                     
                      }
                    else{
                    if(_selectedPaymentMethod == 0){
                        print('credit card');
                      
                        await apifunction().postunresgiteredtestbilll('Paid',charges);
             Navigator.popUntil(context, (route) => route.isFirst,);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(),
              ),
            );
                      }
                      else{
                        print('counter');

                        await apifunction().postunresgiteredtestbilll('Unpaid',charges);
             Navigator.popUntil(context, (route) => route.isFirst,);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(),
              ),
            );
                      }
                     
                      
                    }                      // Handle payment action

                    },
                           child: Text('Proceed to desktop',style: TextStyle(fontFamily: 'nunito-extrabold',fontSize: 20,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                    //  minimumSize: Size(200, 60),
                      backgroundColor: const Color(0xFF0E67B8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreditCardForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: _cardNumberController,
              decoration: InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: _validateCardNumber,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _expiryDateController,
                    decoration: InputDecoration(
                      labelText: 'Expiry Date',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9/]'))
                    ],
                    validator: _validateExpiryDate,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _cvvController,
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: _validateCVV,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: _cardHolderNameController,
              decoration: InputDecoration(
                labelText: 'Card Holder Name',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
              validator: _validateCardHolderName,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayAtCounterInfo() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You have chosen to pay at the counter.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Please proceed to the counter to complete your payment.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
