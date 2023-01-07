import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:phone_verification/model/vet.dart';
import 'package:url_launcher/url_launcher.dart';
import '../env.dart';

class veterian extends StatefulWidget {
  const veterian({key}) : super(key: key);

  @override
  State<veterian> createState() => _veterianState();
}

class _veterianState extends State<veterian> {
  Future<List<Vet>>veterian;
  final vetListKey = GlobalKey<_veterianState>();


  @override
  void initState() {
    super.initState();
    veterian = getveterianList();
  }

  Future<List<Vet>> getveterianList() async {
    final response = await http.get("${Env.URL_PREFIX}/VetViewSet");

    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Vet> veterian = items.map<Vet>((json) {
      return Vet.fromJson(json);
    }).toList();
    print(veterian);

    return veterian;
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     backgroundColor: Colors.black,
    //     appBar: AppBar(
    //       title: Text("TRAINER"),
    //     ),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           SizedBox(
    //             height: 15,
    //           ),
    //           InkWell(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => trainer1(),
    //               ));
    //             },
    //             child: Container(
    //               height: MediaQuery.of(context).size.height * 0.25,
    //               width: MediaQuery.of(context).size.width * 1,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.40,
    //                     decoration: new BoxDecoration(
    //                         image: new DecorationImage(
    //                             image: new AssetImage("images/trainer.png"),
    //                             fit: BoxFit.fill)),
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.25,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Name: \n\n\nServices: \n\n\n\n\nPhone: ",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.35,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "The Happy Woffy\n\nDog Training, Dog Walking, Pet pick and Drop service\n\n96533 50494",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           InkWell(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => trainer2(),
    //               ));
    //             },
    //             child: Container(
    //               height: MediaQuery.of(context).size.height * 0.25,
    //               width: MediaQuery.of(context).size.width * 1,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.40,
    //                     decoration: new BoxDecoration(
    //                         image: new DecorationImage(
    //                             image: new AssetImage("images/trainer.png"),
    //                             fit: BoxFit.fill)),
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.25,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Name: \n\nServices: \n\n\n\n\n\nPhone: ",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.35,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Adil Qureshi\n\nDog Training, Dog Walking, Dog grooming,Dog Behaviourist\n\n7947180890",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           InkWell(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => trainer3(),
    //               ));
    //             },
    //             child: Container(
    //               height: MediaQuery.of(context).size.height * 0.25,
    //               width: MediaQuery.of(context).size.width * 1,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.40,
    //                     decoration: new BoxDecoration(
    //                         image: new DecorationImage(
    //                             image: new AssetImage("images/trainer.png"),
    //                             fit: BoxFit.fill)),
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.25,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Name: \n\nServices: \n\n\n\n\n\nPhone: ",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.35,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Khooram Irai\n\nDog Training, Agression Issue, Puppy Training,Dog Behaviourist\n\n7947180890",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           InkWell(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => trainer4(),
    //               ));
    //             },
    //             child: Container(
    //               height: MediaQuery.of(context).size.height * 0.25,
    //               width: MediaQuery.of(context).size.width * 1,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.40,
    //                     decoration: new BoxDecoration(
    //                         image: new DecorationImage(
    //                             image: new AssetImage("images/trainer.png"),
    //                             fit: BoxFit.fill)),
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.25,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Name: \n\n\nServices: \n\n\n\n\nPhone: ",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.35,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Rodney DSouza\n\nDog Training, Dog Behaviourist\n\n\n7304763014",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           InkWell(
    //             onTap: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => trainer5(),
    //               ));
    //             },
    //             child: Container(
    //               height: MediaQuery.of(context).size.height * 0.25,
    //               width: MediaQuery.of(context).size.width * 1,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.40,
    //                     decoration: new BoxDecoration(
    //                         image: new DecorationImage(
    //                             image: new AssetImage("images/trainer.png"),
    //                             fit: BoxFit.fill)),
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.25,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Name: \n\n\nServices: \n\n\n\n\nPhone: ",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     height: MediaQuery.of(context).size.height * 0.25,
    //                     width: MediaQuery.of(context).size.width * 0.35,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         "Janhavi Kamani\n\nDog Training, Dog Behaviour Management, Puppy Training\n7947180890",
    //                         style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 16,
    //                             color: Colors.white),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     color: Colors.blue,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ));




    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('VETERIAN Details',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),),
        key: vetListKey,

        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            child: Center(
              child: FutureBuilder<List<Vet>>(
                future: veterian,
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
                                        padding:  EdgeInsets.only(top:15),
                                        child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top:5),
                                        child: Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
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
                                          padding:  EdgeInsets.only(top:15),
                                          child: Text(data.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top:5),
                                          child: Text(data.Contact_info,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 15,left: MediaQuery.of(context).size.height*0.03),
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
