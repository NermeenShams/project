import 'package:flutter/material.dart';
import 'package:untitled/editpage.dart';
import 'package:untitled/model/model.dart';

import 'homepage.dart';

class Contactpage extends StatefulWidget {


  Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [Icon(Icons.search),SizedBox(width:24)],
      ),
      body:ListView.separated(separatorBuilder:(context,index)=>SizedBox(height:8),itemCount: contact.length,itemBuilder: (context, index)=> Padding(padding: const EdgeInsets.all(16.0),
        child: Card(color:Colors.white60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile (leading:
            CircleAvatar(child: Text(contact[index].firstname[0])),
                title: Text(contact[index].firstname!),
                subtitle: Text(contact[index].phonenumber!),
                trailing: SizedBox(
                    width: 170,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Editpage()));
                          }, child: Text("Edit")),
                          ElevatedButton(
                              onPressed: () {setState(() {
                                contact.removeAt(index);
                              });}, child: Text("Delete"))
                        ]))),
          ),
        ),
      )),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage()));
          },
          child: Icon(Icons.add)),
    );
  }}


