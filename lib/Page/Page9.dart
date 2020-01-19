import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page9 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page9> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar: AppBar(
          backgroundColor: an1,
          elevation: 0,
          centerTitle: true,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: anYellow
                  ),
                  child: Text("انشاء حلقة جديدة" , style: TextStyle(fontSize: 15),),
                ),

                new Row(
                  children: <Widget>[
                    new Text("الحلقات "),
                    SizedBox(width: 10),
                    new Icon(Icons.accessibility),
                  ],
                ),


              ],
            ),
          ),
        ),

        body: Column(
          children: <Widget>[
            Center(
              child: new Container(
                margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
                height: 50,
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Icon(Icons.arrow_drop_down),
                    new Text("ترتيب حسب " , style: TextStyle(fontSize: 18),),
                  ],
                )
              ),
            ),

            new Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  buildContainer3(),
                  buildContainer3(),
                  buildContainer3(),
                  buildContainer3(),
                  buildContainer3(),
                ],
              ),
            ))
          ],
        ),




      ),
    );
  }
}