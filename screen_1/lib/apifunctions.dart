import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
final ip = '192.168.0.108';

class apifunction {

Future<void> postDataToApi(date,time,name,age,gender,complain) async {
  final apiUrl = 'http://192.168.0.107:8000/testappointment/'; // replace with your API URL
  final headers = {
    'Content-Type': 'application/json',
  };

  final requestBody = {
    "appointment_date": "2024-06-26",
    "appointment_time": "13:36:28.094Z",
    "patient_name": "Talha Sultan",
    "patient_age": 16,
    "additional_information": "None"
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(requestBody),
  );

  if (response.statusCode == 200) {
    print('Data posted successfully!');
  } else {
    print('Error posting data: ${response.statusCode}');
  }
}


}

class Visit {
  final int doctorid;
  final DateTime date;

  Visit({required this.doctorid, required this.date});

  Map<String, dynamic> toJson() => {
        'doctorid': doctorid,
        'date': date.toIso8601String(),
      };
}

//

Future<void> postPatientsdata(name,age,gender,email,address,contactInfo,emergencycontact,password) async {
  final apiUrl = 'http://$ip:8000/testpatientsentry/'; // replace with your API URL
  final headers = {
    'Content-Type': 'application/json',
  };

  final requestBody = {
  "PatientID": 1,
  "Name": name,
  "Age": age,
  "Gender": gender,
  "EmailAddress":email,
  "Address": address,
  "ContactInformation": contactInfo,
  "EmergencyContact": emergencycontact,
  "InsuranceInformation": "None",
  "Password": password
};

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(requestBody),
  );

  if (response.statusCode == 200) {
    print('Data posted successfully!');
  } else {
    print('Error posting data: ${response.statusCode}');
  }
}


Future<List<dynamic>> getTimesByDates(int doctorid, String date) async {
  //print('the date of this func');
  DateTime dateTime = DateTime.parse(date);
String dateOnly = dateTime.toLocal().toString().split(' ')[0];
  print('the new date is $dateOnly');

print(doctorid);
  final url = Uri.parse('http://$ip:8000/gettimesbydates/$doctorid/$dateOnly');
  //final visit = Visit(doctorid: doctorid, date: date);
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},
    
  );
  if (response.statusCode == 200) {
    print('i am in the get times by dates function');

   // print(response.body);
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => item).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List<dynamic>> fetchdoctorsinfobyid(int Docid) async {

  final url = Uri.parse('http://$ip:8000/getdoctorsbyid/$Docid');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print('URL: $url');
  print('Headers: $headers');
  
  if (response.statusCode == 200) {
    print('now im here again 2');
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => item).toList();
  } else {
    throw Exception('Failed to load data');
  }
}


Future<List<dynamic>> fetchalldoctors(String specialty) async {
  print('im hereee ');
  
  final url = Uri.parse('http://$ip:8000/fetchalldoctorsbyspecialization/$specialty');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print('URL: $url');
  print('Headers: $headers');
  
  if (response.statusCode == 200) {
    print('now im here again 2');
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => item).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

var userid;
Future<bool> authorization (String emailaddress, String password) async {
  print('in authorization 1');
  final url = Uri.parse('http://$ip:8000/fetchloginInfo/$emailaddress');

  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );
              print('in authorization 2');


  if (response.statusCode == 200) {
       
   Map<String, dynamic> jsonData = json.decode(response.body);
   if(jsonData.isNotEmpty){
      String email = jsonData['EmailAddress'];
  String passwords = jsonData['Password'];
  userid = jsonData['PatientId'];
  print(email);
  print(password);
  print(userid);
  return email == emailaddress && passwords == password;
  }
   else{
     return false;
   }

  } else {
    // Failed to fetch data from the API
    return false;
    
  }

}


Future<List< dynamic>> appointinfo() async {
print('in the appointment func');
  final url = Uri.parse('http://$ip:8000/fetchupcomingappointments/1');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  if (response.statusCode == 200) {
    print('now im here again 234');
  //  print(response.body);
   List< dynamic> jsonData = json.decode(response.body);
  //  print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {
    print('in the else cond');
    throw Exception('Failed to load data');
  }
}


Future<Map<String, dynamic>> testpatientinfo(int patientid) async {

  final url = Uri.parse('http://$ip:8000/fetchpatientsinformation/$patientid');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  
  if (response.statusCode == 200) {
    print('now im here again 23');
   // print(response.body);
   Map<String, dynamic> jsonData = json.decode(response.body);
    //print('jsonResponse: $jsonData['Age']');
    return jsonData;
  } else {
    throw Exception('Failed to load data');
  }
}

Future<dynamic> fetchpatientsInformation(int id) async {
  print('im hereee ');
  
  final url = Uri.parse('http://$ip:8000/fetchpatientsinformation/$id');
  final Map<String, String> headers = {'Content-Type': 'application/json'};
  final response = await http.get(
    url,
    headers: headers,
  );

  print('URL: $url');
  print('Headers: $headers');
  
  if (response.statusCode == 200) {
    print('now im here again 2');
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => item).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<void> UpdatepatientsInformation(name,age,gender,address,contactinfo,emergencycontact,patientid,email,password) async {
 
 
  final apiUrl = 'http://$ip:8000/updatepatientsinformation/5'; // replace with your API URL
  final headers = {
    'Content-Type': 'application/json',
  };


  
  final requestBody ={
  "PatientID": 0,
  "Name": name,
  "Age": int.parse(age),
  "Gender": gender,
  "EmailAddress": email ,
  "Address": address,
  "ContactInformation": contactinfo,
  "EmergencyContact": emergencycontact,
  "InsuranceInformation": "None",
  "Password": password
};


//   final requestBody ={
//   "PatientID": patientid,
//   "FullName": name,
//   "Age": age,
//   "Gender": gender,
//   "HomeAdress": address,
//   "ContactInformation": contactinfo,
//   "EmergencyContact": emergencycontact
// };

  final response = await http.put(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(requestBody),
  );

  if (response.statusCode == 200) {
    print('Data posted successfully!');
  } else {
    print('Error posting data: ${response.statusCode}');
  }
}

