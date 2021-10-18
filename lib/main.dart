import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/login/login_screen.dart';
import 'package:qr_scanner/screens/main/main_screen.dart';
import 'package:qr_scanner/screens/register/register_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/main': (context) => HomeScreen(),
      },
      // home: HomeScreen(),
      // home: LoginScreen(),
    );
  }
}
