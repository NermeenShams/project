import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';

import 'contacts.dart';
import 'model/model.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contacts List",
      theme: ThemeData(primarySwatch: Colors.purple),
      home:Contactpage(),

    );
  }
}
