// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:phone_verification/screens/homepage.dart';
import 'package:phone_verification/screens/register.dart';



enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;


  final phoneController = TextEditingController();
  final otpController = TextEditingController();




  FirebaseAuth _auth = FirebaseAuth.instance;

  String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
  
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential?.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => homepage()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  getMobileFormWidget(context) {
    return Column(
      children: [
        Stack(children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/stack.png'), fit: BoxFit.fill)),
              padding: EdgeInsets.only(left: 35, top: 180),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: TextField(

            controller: phoneController,
            decoration: InputDecoration(
              hintText: "Phone Number",
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FlatButton(
          onPressed: () async {
            setState(() {
              showLoading = true;
            });
            String abc = '+91' + phoneController.text;


            await _auth.verifyPhoneNumber(
              phoneNumber: abc,
              verificationCompleted: (phoneAuthCredential) async {
                setState(() {
                  showLoading = false;
                });
                //signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              verificationFailed: (verificationFailed) async {
                setState(() {
                  showLoading = false;
                });
                _scaffoldKey.currentState.showSnackBar(
                    SnackBar(content: Text(verificationFailed.message)));
              },
              codeSent: (verificationId, resendingToken) async {
                setState(() {
                  showLoading = false;
                  currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                  this.verificationId = verificationId;
                });
              },
              codeAutoRetrievalTimeout: (verificationId) async {},
            );
          },
          child: Text("SEND"),
          color: Colors.blue,
          textColor: Colors.white,
        ),

        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyRegister(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff4c505b),
                      fontSize: 18),
                ),
              ),
              style: ButtonStyle(),
            ),
          ],
        )
      ],
    );

  }

  getOtpFormWidget(context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Text(
              'Enter the OTP received on your mobile number to proceed'+ phoneController.text,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: "Enter OTP",
              ),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () async {
                PhoneAuthCredential phoneAuthCredential =
                    PhoneAuthProvider.credential(
                        verificationId: verificationId,
                        smsCode: otpController.text);

                signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              child: Text("VERIFY"),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            child: showLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                    ? getMobileFormWidget(context)
                    : getOtpFormWidget(context),
          ),
        ));
  }
}
