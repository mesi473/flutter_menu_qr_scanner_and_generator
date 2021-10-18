import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Center(
          child: Text(
        "hotel Menu Scanner",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'LogoFont',
            fontSize: 20,
            color: Colors.white),
      )),
    );
  }
}