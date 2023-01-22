import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:phone_verification/model/trainer.dart';

import 'package:url_launcher/url_launcher.dart';

import '../env.dart';

class trainer extends StatefulWidget {
  const trainer({key}) : super(key: key);

  @override
  State<trainer> createState() => _trainerState();
}

class _trainerState extends State<trainer> {
  late Future<List<Trainer>> trainer;
  final trainerListKey = GlobalKey<_trainerState>();

  @override
  void initState() {
    super.initState();
    print('Start numbers');
    trainer = getTrainerList();
    print('should not come here');
  }

  Future<List<Trainer>> getTrainerList() async {
    print('1');
    final response = await http.get(Uri.parse("${Env.URL_PREFIX}/TrainerViewSet"));
    print('2');
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    print('3');
    List<Trainer> trainer = items.map<Trainer>((json) {
      return Trainer.fromJson(json);
    }).toList();
    print('4');
    print(trainer);

    return trainer;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Trainer Details',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        key: trainerListKey,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Center(
              child: FutureBuilder<List<Trainer>>(
                future: trainer,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  // By default, show a loading spinner.
                  if (!snapshot.hasData) return CircularProgressIndicator();
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      var data = snapshot.data[index];
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width * 1,
                        child: InkWell(
                          onTap: () => launch(data.link),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0)),
                              elevation: 10,
                              child: Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    width: MediaQuery.of(context).size.width *
                                        0.300,
                                    child: Icon(
                                      Icons.account_circle,
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width *
                                        0.200,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Contact',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 15,
                                          ),
                                          child: Text(
                                            'Address',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    width: MediaQuery.of(context).size.width *
                                        0.450,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                            child: Text(
                                              data.name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              data.Contact_info,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 15,
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.03),
                                            child: Text(
                                              data.Address,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
