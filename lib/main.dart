// ignore_for_file: prefer_const_constructors, deprecated_member_use

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture/routes.dart';
import 'package:furniture/screen/Welcome/splash_screen.dart';

import 'Theme.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized;
  // FirebaseAuth.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: splashScreen(),
      initialRoute: splashScreen.routeName,
      routes: routes,
    );
  }
}
