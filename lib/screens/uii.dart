// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:phone_verification/env.dart';
// import 'package:phone_verification/model/trainer.dart';
// import 'package:http/http.dart' as http;
// import 'package:http_parser/http_parser.dart';
// import 'package:phone_verification/screens/home_screen.dart';
// // // import 'package:phone_verification/screens/homepage.dart';
// // //
// //
// // class Home extends StatefulWidget {
// //   @override
// //   const Home({key}) : super(key: key);
// //   HomeState createState() => HomeState();
// // }
// //
// // class HomeState extends State<Home> {
// //   Future<List<Trainer>> employees;
// //   final employeeListKey = GlobalKey<HomeState>();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     employees = getEmployeeList();
// //   }
// //
// //   Future<List<Trainer>> getEmployeeList() async {
// //     final response = await http.get("${Env.URL_PREFIX}/TrainerViewSet");
// //
// //     final items = json.decode(response.body).cast<Map<String, dynamic>>();
// //     List<Trainer> employees = items.map<Trainer>((json) {
// //       return Trainer();
// //     }).toList();
// //
// //     return employees;
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: employeeListKey,
// //       appBar: AppBar(
// //         title: Text('Employee List'),
// //       ),
// //       body: Center(
// //         child: FutureBuilder<List<Trainer>>(
// //           future: employees,
// //           builder: (BuildContext context, AsyncSnapshot snapshot) {
// //             // By default, show a loading spinner.
// //             if (!snapshot.hasData) return CircularProgressIndicator();
// //             // Render employee lists
// //             return ListView.builder(
// //               itemCount: snapshot.data.length,
// //               itemBuilder: (BuildContext context, int index) {
// //                 var data = snapshot.data[index];
// //                 return Card(
// //                   child: ListTile(
// //                     leading: Icon(Icons.person),
// //                     title: Text(
// //                       data.ename,
// //                       style: TextStyle(fontSize: 20),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// }