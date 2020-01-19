import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page15 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page15> {

  String name = 'dsfkklsdfjds fldslkfjladksjf kldsajfdsfdsjf ldskjfldsj flkjdsaklfjsdklajf';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar: AppBar(
          backgroundColor: an1,
          elevation: 0,
          actions: <Widget>[
            CircleAvatar(child: Icon(Icons.keyboard_arrow_right), backgroundColor: anWhite,)
          ],
        ),


        body:Column(
          children: <Widget>[

            new Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: an1,
              child: Column(
                children: <Widget>[
                  new Text("الشيخ ناصر ") ,
                  new Text("@User 445 ") ,
                  new Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: my_Button(textButton: "تواصل معه" , onBtnclicked: (){} , radiusButton: 8 ,heightButton: 60,
                            colorButton: anYellow , fontSize: 20),
                      )),

                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: my_Button(textButton: "تعديل الملف الشخصي" , onBtnclicked: (){} ,heightButton: 60,
                            radiusButton: 8 , colorButton: anWhite , fontSize: 20 ,colorText: anGrayText),
                      ))
                    ],
                  )
                ],
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child: new Text(name),
            ),


            new Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child: Column(
                children: <Widget>[

                  Directionality(textDirection: TextDirection.rtl,
                    child: new Row(children: <Widget>[
                      my_IconInContainer(color1: an1 , color2: anWhite , heightWidth: 16),
                      PaddingText(),
                    ],),
                  ),

                  buildContainer3(),
                  buildContainer3(),
                  buildContainer3(),

                ],
              ),
            ),



          ],
        ) ,




      ),
    );
  }
}