import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/screens/breedinfo.dart';
import 'package:phone_verification/screens/login_screen.dart';
import 'package:phone_verification/screens/my_dog.dart';
import 'package:phone_verification/screens/places.dart';
import 'package:phone_verification/screens/store.dart';
import 'package:phone_verification/screens/trainer.dart';
import 'package:phone_verification/screens/veterian.dart';

class homepage extends StatelessWidget {
  const homepage({Key key, String title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text("Android Application"),
          actions: [],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: 'BackArrow Icon',
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.35,
                      child: Padding(padding: EdgeInsets.only(top:18 ,left:15 ),
                        child: Text(
                          "CUBCARE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      )),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.65,
                      child: Padding(padding: EdgeInsets.only(top:18 ,left: 130 ),
                        child: Text(
                          "Welcome ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      )),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "images/dobie.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              "images/cane.jfif",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "images/retri.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              "images/gsd.jpg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              "images/husky.jfif",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(),
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => veterian(),
                            ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.47,
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage("images/vet.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "VETERIAN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => trainer(),
                        ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/trainer.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "TRAINER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => my_dog(),
                            ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.47,
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage("images/my dog.jfif"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "MY DOG",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => places(),
                        ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/park.jfif"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "PLACES",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => breedinfo(),
                            ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.47,
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image:
                                        new AssetImage("images/doginfo.jfif"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "BREED INFO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => product(),
                        ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("images/shop.jfif"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "DOG STORE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }

  login_screen() {}
}

class _auth {
  static signOut() {}
}
