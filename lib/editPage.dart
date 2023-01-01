import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class editpage extends StatelessWidget {
  String Name, RegNumber, Branch, College, Address, BloodGroup;
  editpage(
      {required this.Name,
      required this.RegNumber,
      required this.Branch,
      required this.College,
      required this.Address,
      required this.BloodGroup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Name: ${Name}'),
            Text('RegNumber: ${RegNumber}'),
            Text('Branch: ${Branch}'),
            Text('College: ${College}'),
            Text('Address: ${Address}'),
            Text('BloodGroup: ${BloodGroup}'),
          ],
        ),
      ),
    );
  }
}
