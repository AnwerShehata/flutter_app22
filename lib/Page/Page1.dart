import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

class Page1 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: an1,
        
        body: Center(
          child: Image.asset("assets/imag/logo1.png" , width: 300,)
        ),





      ),
    );
  }
}