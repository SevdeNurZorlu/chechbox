import 'package:flutter/material.dart';

import 'chechbox.dart';

void main() {

  runApp(MaterialApp(

    title: "ChechBox ",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: chechbox(),
  ));
}

