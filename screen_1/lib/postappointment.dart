import 'dart:convert';

import 'package:http/http.dart' as http;

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

Future<List<dynamic>> getTimesByDates(int doctorid, DateTime date) async {
  final url = Uri.parse('http://192.168.0.107:8000/gettimesbydates/$doctorid/$date');
  //final visit = Visit(doctorid: doctorid, date: date);
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},
    
  );

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => item).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<List<dynamic>> fetchdoctorsinfobyid(int Docid) async {

  final url = Uri.parse('http://192.168.0.107:8000/getdoctorsbyid/$Docid');
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
  
  final url = Uri.parse('http://192.168.0.107:8000/fetchalldoctorsbyspecialization/$specialty');
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
