// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps, unused_label, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import 'package:furniture/components/continue_bar.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/size_config.dart';

import 'OTP_form.dart';

class OtpBody extends StatefulWidget {
  const OtpBody({
    Key? key,
  }) : super(key: key);

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Verification Code",
                style: HeadLine1,
              ),
              Text(
                "we have sent the verification code to +91-${1}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Pn_no_input(),
              SizedBox(height: getproportionateScreenHeight(15)),
              Timer(),
              SizedBox(height: getproportionateScreenHeight(100)),

              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.3),
              ContinueBar(text: 'Continue', press: () {}),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
            ],
          ),
        ),
      ),
    );
  }

  Row Timer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code valid for'),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0),
          duration: Duration(seconds: 60),
          builder: (context, value, child) => Text(
            '00:${value}',
            style: TextStyle(color: Colors.red[800]),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

// class Pn_no_input extends StatelessWidget {
//   const Pn_no_input({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: 'enter your phone number',
//           prefix: Padding(
//             padding: EdgeInsets.all(4),
//             child: Text('+91'),
//           ),
//           suffixIcon: Icon(Icons.send_sharp),
//         ),
//         maxLength: 8,
//         keyboardType: TextInputType.number,
//         controller: TextEditingController(),
//       ),
//     );
//   }
// }
