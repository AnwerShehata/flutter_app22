import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page6 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page6> {

  void onTap(){
    print("onTap");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(" التنبيهات  " , style: TextStyle(color: anWhite),),
            new Icon(Icons.notifications),
          ],),
          centerTitle: true,
          elevation: 0,
          backgroundColor: an1,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(onTap: (){onTap();},
              child: CircleAvatar(
              child: Icon(Icons.arrow_forward_ios,color: anGray, ),
              backgroundColor: anWhite)),
            ),
          ],
        ),


        body: ListView(
          children: <Widget>[
            buildContainer5(),
            buildContainer5(),
            buildContainer5(),
            buildContainer5(),
            buildContainer5(),
            buildContainer5(),
          ],
        ),


      ),
    );
  }


}