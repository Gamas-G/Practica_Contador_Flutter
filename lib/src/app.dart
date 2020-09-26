import 'package:flutter/material.dart';

import 'package:contador/src/pages/contador_page.dart';//Page con StateFul
//import 'package:contador/src/pages/home_page.dart';//´Page con Stateless

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage()
    );
  }
}