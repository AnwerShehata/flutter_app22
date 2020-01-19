import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/My_Drawer.dart';
import '../Components/MyWidget.dart';

class Page5 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page5> {

  String value1 = "75%";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        backgroundColor: anWhite,


        drawer: My_Drawer(),





        appBar: AppBar(
          title: Row(children: <Widget>[
            IconButton(icon:Icon(Icons.email ,size: 30,), onPressed: (){}),
            SizedBox(width: 60),
            // شعار التطبيق
            Image.asset("assets/imag/logo1.png" ,scale: 7),
          ],),
          leading:   IconButton(icon:Icon(Icons.search ,size: 30,), onPressed: (){}) ,
          elevation: 0,
          backgroundColor: an1,
          actions: <Widget>[
            IconButton(icon:Icon(Icons.notifications ,size: 30,), onPressed: (){}) ,
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(child: Icon(Icons.arrow_forward_ios,color: an1, ), backgroundColor: anWhite),
            ),
          ],
        ),


        body: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 20 , top: 20),
              child: new Text("مؤشر مسيرتك" , style: TextStyle(fontSize: 17), textAlign: TextAlign.end,),
            ),

            buildContainer(),
            buildContainer2(),

            new Row(
              children: <Widget>[
                Expanded(child: buildContainer()),
                Expanded(child: buildContainer()),
              ],
            ),

            new Row(
              children: <Widget>[
                Expanded(child: buildContainer()),
                Expanded(child: buildContainer()),
              ],
            ),


            SizedBox(height: 10),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new Column(
                  children: <Widget>[
                    new CircleAvatar(minRadius: 50) ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("من المنو المهني"),
                    ),
                  ],
                ),

                new Column(
                  children: <Widget>[
                    new CircleAvatar(minRadius: 50) ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("من المنو المهني"),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: 10),


            Padding(
              padding: const EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                new Text("عرض الكل " ,style: TextStyle(fontSize: 18 , color: an1),),
                  new Text("الحلقات " ,style: TextStyle(fontSize: 18),),
              ],),
            ),

            buildContainer3(name1: "انتهت" , name2: "120 طالب"  , name3: "5 اخبار" , name4: "الشيخ ناصر"),
            buildContainer3(name1: "انتهت" , name2: "120 طالب"  , name3: "5 اخبار" , name4: "الشيخ ناصر"),
            buildContainer3(name1: "انتهت" , name2: "120 طالب"  , name3: "5 اخبار" , name4: "الشيخ ناصر"),


          ],
        ),

      ),
    );
  }





}