// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Id card'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Reg Number",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Branch",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "College Name",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Address",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Blood Group",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
