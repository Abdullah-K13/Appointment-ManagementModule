import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:screen_1/dropupwidget.dart';
import 'package:screen_1/apifunctions.dart';



// Future<List<dynamic>> fetchData() async {
//   final url = 'http://192.168.0.107:8000/getusers/'; // Replace with your API URL

//   final response = await http.get(Uri.parse(url));
// print("test here");
//   if (response.statusCode == 200) {
//     // Data fetched successfully
//     final data = jsonDecode(response.body);
//     print(data);
//     return data;
//   } else {
//     // Fetching data failed
//     throw Exception('Failed to load data');
//   }
// }

testfunction(){
  
FutureBuilder<Map<String, dynamic>>(
          future: apifunction().testpatientinfo(1),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              // Display an error message if fetching data failed
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              // Display different widgets based on the data
              var data = snapshot.data!;
              print('heelooo abdullah data is');
              print(data['FullName']);
              print(data['Gender']);
              print(data['Age']);
          return
          Container(height: 0,
          width: 0,);
          // ListView.builder(
          //   itemCount: data.length,
          //   itemBuilder: (context, index) {
          //     final item = data[index];

          //     // Customize the item widget based on the data structure
          //     return ListTile(
          //       title: Text(item['DoctorName'].toString()),
          //      // subtitle: Text(item['']),
          //     );
          //   },
          // );
      
        } else {
          // Display a loading indicator while fetching data
          return CircularProgressIndicator();
        }
      },
       );

}

class testclass extends StatefulWidget {

  @override
  State<testclass> createState() => _testclassState();
}

class _testclassState extends State<testclass> {

  
  @override
  void initState() {
    // Call super.initState() to ensure that the parent class's initState method is called.
    super.initState();
//testfunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        color: Colors.red,
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen using a named route.
           
          },child: DropUpMenu(
            items: ['Item 1', 'Item 2', 'Item 3'],
            onChanged: (item) {
              print('Selected item: $item');
            },
          ),
        )
,
     )
   );
  }
}


// Future<bool> authenticate(String email, String password) async {
//   final url = 'http://127.0.0.1:8000/'; // Replace with your API URL
//   final body = jsonDecode({'email': email, 'password': password});
//   final headers = {'Content-Type': 'application/json'};

//   final response = await http.post(Uri.parse(url), headers: headers, body: body);

//   if (response.statusCode == 200) {
//     // Authentication successful
//     final data = jsonDecode(response.body);
//     // Do something with the data, such as storing the user's token or ID
//     return true;
//   } else {
//     // Authentication failed
//     // Handle the error, such as showing an error message to the user
//     return false;
//   }
// }
