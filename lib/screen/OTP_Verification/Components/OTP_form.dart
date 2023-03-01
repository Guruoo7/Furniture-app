// ignore_for_file: dead_code, prefer_const_constructors, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late final String verificationCode;
  @override
  Widget build(BuildContext context) {
    final FocusNode _pinPutFocusNode = FocusNode();
    final TextEditingController _pinPutController = TextEditingController();
    final BoxDecoration pinPutDecoration = BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(10.0));

    return PinPut(
      fieldsCount: 6,
      textStyle: const TextStyle(fontSize: 25.0),
      eachFieldWidth: 40.0,
      eachFieldHeight: 40.0,
      focusNode: _pinPutFocusNode,
      controller: _pinPutController,
      submittedFieldDecoration: pinPutDecoration,
      selectedFieldDecoration: pinPutDecoration,
      followingFieldDecoration: pinPutDecoration,
      pinAnimationType: PinAnimationType.fade,
    );

    verifyPhone() async {
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: "+91${2}}",
          verificationCompleted: (PhoneAuthCredential credential) async {
            await FirebaseAuth.instance
                .signInWithCredential(credential)
                .then((value) async {
              if (value.user != null) {
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) =>),
                //     (route) => false);
              }
            });
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e.message);
          },
          codeSent: (var verificationID, var resendToken) {
            setState(() {
              verificationCode = verificationID;
            });
          },
          codeAutoRetrievalTimeout: (String verificationID) {
            setState(() {
              var verificationCode = verificationID;
            });
          },
          timeout: Duration(seconds: 60));
    }
  }
}
