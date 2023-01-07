import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:phone_verification/model/places.dart';

import 'package:phone_verification/screens/placesdata.dart';
import 'package:url_launcher/url_launcher.dart';

import '../env.dart';

class places extends StatefulWidget {
  const places({key}) : super(key: key);

  @override
  State<places> createState() => _placesState();
}

class _placesState extends State<places> {
  Future<List<Places>>places;
  final placesListKey = GlobalKey<_placesState>();


  @override
  void initState() {
    super.initState();
    places = getplacesList();
  }

  Future<List<Places>> getplacesList() async {
    final response = await http.get("${Env.URL_PREFIX}/PlacesViewSet");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Places> places = items.map<Places>((json) {
      return Places.fromJson(json);
    }).toList();
    print(places);

    return places;
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Places Details',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),),
        key: placesListKey,

        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            child: Center(
              child: FutureBuilder<List<Places>>(
                future: places,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  // By default, show a loading spinner.
                  if (!snapshot.hasData) return CircularProgressIndicator();
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      var data = snapshot.data[index];
                      return Container(
                        height: MediaQuery.of(context).size.height*0.16,
                        width: MediaQuery.of(context).size.width*1,
                        child: InkWell(
                          onTap: () => launch(data.link),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0)),
                              elevation: 10,
                              child:Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width*0.300,

                                    child: Icon(Icons.account_circle,),
                                  ),
                                  Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width*0.200,
                                    color: Colors.white,
                                    child:Column(children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top:10),
                                        child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top:10),
                                        child: Text('Time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: 15,),
                                        child: Text('Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
                                      ),
                                    ],) ,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height*1,
                                    width: MediaQuery.of(context).size.width*0.450,

                                    child:SingleChildScrollView(
                                      child: Column(children: [
                                        Padding(
                                          padding:  EdgeInsets.only(top:10),
                                          child: Text(data.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top:5),
                                          child: Text(data.Open_time,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top:1),
                                          child: Text(data.Close_time,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height*0.03),
                                          child: Text(data.Address,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                      ],),
                                    ) ,
                                  ),
                                ],
                              )
                          ),
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
