// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:getwidget/getwidget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:id_card/editPage.dart';
import 'package:id_card/edit_page.dart';
import 'package:image_picker/image_picker.dart';

class UploadProfileImage extends StatefulWidget {
  @override
  State<UploadProfileImage> createState() => _UploadProfileImageState();
}

class _UploadProfileImageState extends State<UploadProfileImage> {
  TextEditingController _NameController = TextEditingController();

  TextEditingController _RegNumberController = TextEditingController();

  TextEditingController _BranchController = TextEditingController();

  TextEditingController _CollegeController = TextEditingController();

  TextEditingController _AddressController = TextEditingController();

  TextEditingController _BloodGroupController = TextEditingController();

  File? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ID CARD'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 237, 238, 242), width: 5),
                    ),

                    child: pickedImage != null
                        ? Image.file(
                            pickedImage!,
                            width: 170,
                            height: 170,
                            fit: BoxFit.cover,
                          )
                        : GFAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFUgYuemV7b3RJ9bnFxeVfAtlxYXl9SG-G4B5g3Y0uRlE8JjKBy0F98p8Fd7bV1eRCclI&usqp=CAU'),
                            shape: GFAvatarShape.square,
                            size: GFSize.LARGE,
                            radius: 100,
                          ),
                    // : Image.network(
                    //     'https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
                    //     width: 170,
                    //     height: 170,
                    //     fit: BoxFit.cover,
                    //   ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: IconButton(
                      onPressed: imagePickerOption,
                      icon: const Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  onPressed: imagePickerOption,
                  icon: const Icon(Icons.add_a_photo_sharp),
                  label: const Text('UPLOAD IMAGE')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _NameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _RegNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Registration No.',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _BranchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Branch',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _CollegeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter College name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _AddressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _BloodGroupController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your BloodGroup',
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => editpage(
                          Name: _NameController.text,
                          RegNumber: _RegNumberController.text,
                          Branch: _BranchController.text,
                          College: _CollegeController.text,
                          Address: _AddressController.text,
                          BloodGroup: _BloodGroupController.text))));
                }),
                child: Text('Edit Data'))
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //     child: Icon(Icons.edit),
      //     onPressed: (() {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => editPage()));
      //     })),
    );
  }
}
