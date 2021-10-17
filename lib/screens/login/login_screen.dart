import 'dart:html';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueAccent,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Center(
                        child: Text(
                      "hotel Menu Scanner",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.12,
                        left: 20,
                        right: 20),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color:Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'LogoFont'
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Stack(
                                    alignment: const Alignment(0, 0),
                                    children: [
                                      SizedBox(width: 40,),
                                      Container(
                                          child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 15, top: 5),
                                        child: TextFormField(
                                        
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'email is required';
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.email,color: Colors.blueAccent,),
                                              labelText: 'Email',
                                              labelStyle:TextStyle(color: Colors.blueAccent),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 3, color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 3, color: Colors.lightBlue),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              )),
                                        ),
                                      )),
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  alignment: const Alignment(0, 0),
                                  children: <Widget>[
                                    Container(
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, right: 15, top: 5),
                                          child: TextFormField(
                                            obscureText: true,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'password is required';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.password,color: Colors.blueAccent,),
                                                labelText: 'password',
                                                labelStyle:TextStyle(color: Colors.blueAccent),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 3,
                                                      color: Colors.blue),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 3,
                                                      color: Colors.lightBlue),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                )),
                                          ),
                                        )),
                                    Positioned(
                                        right: 15,
                                        child: IconButton(
                                            onPressed: () {
                                              // _controller.clear();
                                            },
                                            icon: Icon(
                                              Icons.visibility_off,
                                              color: Colors.blueAccent,
                                            )))
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                child: Card(
                                    elevation: 20,
                                    color: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(150),
                                    ),
                                    child: InkWell(
                                      radius: 20,
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text('Processing Data')),
                                          );
                                        }
                                      },
                                      child: Center(
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
