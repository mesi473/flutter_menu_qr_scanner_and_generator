import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/home_screen.dart';
import 'package:qr_scanner/screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel menu managment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      home: LoginScreen(),
    );
  }
}
