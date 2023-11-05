
import 'package:flutter/material.dart';

import 'contacts.dart';
class Editpage extends StatefulWidget {
  Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
  var name=[];
  var phone=[];


}

class _EditpageState extends State<Editpage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneControlLer=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    TextField(controller:nameController,
    decoration: InputDecoration(
    icon: Icon(Icons.person), hintText: "First Name"),),
        SizedBox(
          height: 16,
        ),
        TextField(controller: phoneControlLer,
            keyboardType: TextInputType.number,
            maxLength: 11,
            decoration: InputDecoration(
                icon: Icon(Icons.phone), hintText: "Phone Number"),),
      SizedBox(
        height: 16,
      ),
      myBtn(context),
    ]))));
  }
  ElevatedButton myBtn(BuildContext context) {
    return ElevatedButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactpage()));
        },
        child: Text("Update"));
}}

