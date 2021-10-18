import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/login/components/logo_name.dart';
import 'package:qr_scanner/screens/register/components/main_input_field_area.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      CompanyName(),
                      MainInputFieldArea(formKey: _formKey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  
  }
}