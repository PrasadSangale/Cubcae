import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/screens/mydog1.dart';
import 'package:phone_verification/screens/mydog10.dart';
import 'package:phone_verification/screens/mydog11.dart';
import 'package:phone_verification/screens/mydog2.dart';
import 'package:phone_verification/screens/mydog3.dart';
import 'package:phone_verification/screens/mydog4.dart';
import 'package:phone_verification/screens/mydog5.dart';
import 'package:phone_verification/screens/mydog6.dart';
import 'package:phone_verification/screens/mydog7.dart';
import 'package:phone_verification/screens/mydog8.dart';
import 'package:phone_verification/screens/mydog9.dart';
import 'package:webview_flutter/webview_flutter.dart';

class my_dog extends StatelessWidget {
  const my_dog({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("MY DOG"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog10(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/liences.png"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG LIENCES"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog11(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/insaurance.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG INSURANCE"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog1(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/dogfood1.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG FOOD"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog2(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/grooming.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG GROOMING"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog3(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/training.png"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG TRAINING"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog4(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/therapy.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("THERAPY DOG"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog5(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/behaviour.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG BEHAVIOUR"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog6(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/health.png"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG HEALTH"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog7(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/medicine.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("DOG MEDICINE"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog8(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/to do.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("THINGS TO DO FOR YOUR DOG"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => mydog9(),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/nottodo.jfif"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.60,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text("THINGS NOT TO DO FOR YOUR DOG"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ));
  }
}
