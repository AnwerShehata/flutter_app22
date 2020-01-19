import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page7 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page7> {
  String imageURL = "";

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
            Text(" الرسائل  " , style: TextStyle(color: anWhite),),
            new Icon(Icons.email),
          ],),
          centerTitle: true,
          elevation: 0,
          backgroundColor: an1,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(child: Icon(Icons.arrow_forward_ios,color: anGray, ), backgroundColor: anWhite),
            ),
          ],
        ),


        body: ListView(
          children: <Widget>[
            buildContainer6(),
            buildContainer6(),
            buildContainer6(),
            buildContainer6(),
            buildContainer6(),
          ],
        ),
      ),
    );
  }

  Container _buildContainer1() {
    return new Container(
            margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 3),
            padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200]
            ),
            child: Row(
              children: <Widget>[

                new Expanded(flex: 3,
                  child:  new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Text("رسالة ادارية" ,style: TextStyle(fontSize: 23),),
                    new Text("  طقم ليقينز مدرز متباين مع هودي جرافيك عبارة طقم ليقينز مدرز متباين مع هوطقم ليقينز",style: TextStyle(color: Colors.grey) , textAlign: TextAlign.end,),
                    Align(alignment: Alignment.bottomLeft,child: new Text("05:55 AM " , style: TextStyle(color: Colors.grey),)),
                  ],
                ),),

                new Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: an1,
                      borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: NetworkImage(imageURL))
                  ),
                )

  ],
            ),
          );
  }
}