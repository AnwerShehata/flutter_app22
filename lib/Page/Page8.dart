import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

class Page8 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),

      home:  new Scaffold(
        
        body: Center(
          child: Text(" page chat  ")
        ),





      ),
    );
  }
}