import 'package:flutter/material.dart';

class editPage extends StatefulWidget {
  const editPage({Key? key}) : super(key: key);

  //static const routeName = '/editpage';
  //final Function addData;
  //editPage(this.addData);

  @override
  State<editPage> createState() => _editPageState();
}

class _editPageState extends State<editPage> {
  // final _NameController = TextEditingController();

  // final _RegNumberController = TextEditingController();

  // final _BranchController = TextEditingController();

  // final _CollegeController = TextEditingController();

  // final _AddressController = TextEditingController();

  // final _BloodGroupController = TextEditingController();

  // void _submitData() {
  //   final enteredName = _NameController.text;
  //   final enteredRegNumber = double.parse(_RegNumberController.text);
  //   final enteredBranch = _BranchController.text;
  //   final enteredCollege = _CollegeController.text;
  //   final enteredAddress = _AddressController.text;
  //   final enteredBloodGroup = _BloodGroupController.text;

  //   // widget.addData(
  //   //   enteredName,
  //   //   enteredRegNumber,
  //   //   enteredBranch,
  //   //   enteredCollege,
  //   //   enteredAddress,
  //   //   enteredBloodGroup,
  //   // );

  //   Navigator.of(context).pop();
  // }

  // String Name, RegNumber, Branch, College, Address, BloodGroup;

  // editPage(this.)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
    );
  }
}
