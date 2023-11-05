import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/model/model.dart';

import 'contacts.dart';


List<Contact> contact = [];
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 // late File _image;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Contact"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.camera_alt),
                CircleAvatar(radius: 80,backgroundColor: Colors.grey.shade800 ),
              ],
            ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: firstnameController,
                decoration: InputDecoration(
                    icon: Icon(Icons.person), hintText: "First Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person), hintText: "Last Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration:
                    InputDecoration(icon: Icon(Icons.work), hintText: "Work"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: phonenumberController,
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: InputDecoration(
                    icon: Icon(Icons.phone), hintText: "Phone Number"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.mail_rounded), hintText: "E-mail"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.web_rounded), hintText: "Website"),
              ),
              SizedBox(
                height: 16,
              ),
              myBtn(context),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton myBtn(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          contact.add(
            Contact(firstnameController.text, phonenumberController.text),
          );
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactpage()));
        },
        child: Text("Save"));
  }
  // pickImage() async {
    //var image = await ImagePicker.pickImage(source:ImageSource.camera);
    //setState((){_image = image as File;});
  //}
}
