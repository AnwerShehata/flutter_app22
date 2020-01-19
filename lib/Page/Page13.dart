import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page13 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page13> {

  String name1 ="بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ";
  String name2 ="الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ (2) الرَّحْمَنِ الرَّحِيمِ (3) مَالِكِ يَوْمِ الدِّينِ (4) إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ (5) اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ (6) صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ (7)";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        appBar: AppBar(
          title: Text(" حلقة تحفيظ القران  "),
          elevation: 0,
          backgroundColor: an1,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new CircleAvatar(child: Icon(Icons.keyboard_arrow_right), backgroundColor: anWhite,),
            )
          ],
        ),


        body: ListView(
          children: <Widget>[

            new Container(
              margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 10),
              decoration: BoxDecoration(
                color: anWhite,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 3.0,),]
              ),
              child: Column(
                children: <Widget>[

                  buildContainer3(),
                  new Divider(),

                  Directionality(textDirection: TextDirection.rtl,
                    child: new Row(
                      children: <Widget>[
                        my_IconInContainer(color1: an1 , color2: anWhite , heightWidth: 20 , ),
                        PaddingText(name: "البرنامج التعليمي "),
                      ],
                    )),

                  new Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300])
                    ),
                    child: Column(
                      children: <Widget>[

                        new Row(
                          children: <Widget>[
                            
                            new Expanded(child:
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border(bottom: BorderSide(color: Colors.grey[300] ) , right: BorderSide(color: Colors.grey[300]))
                              ),
                              height: 60,
                              child:Align(alignment: Alignment.center,child: Text("إلي ")),
                            )
                            ),

                            new Expanded(child:
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border(bottom: BorderSide(color: Colors.grey[300] ) , right: BorderSide(color: Colors.grey[300]))
                              ),
                              height: 60,
                              child:Align(alignment: Alignment.center,child: Text("من")), )
                            ),

                            new Expanded(child:
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border(bottom: BorderSide(color: Colors.grey[300] ) , right: BorderSide(color: Colors.grey[300]))
                              ),
                              height: 60,
                              child:Align(alignment: Alignment.center,child: Text("اسم السورة")), )
                            ),

                          ],
                        ),


                        new Row(
                          children: <Widget>[

                            new Expanded(child:
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border(right: BorderSide(color: Colors.grey[300]))
                              ),
                              height: 60,
                              child:Align(alignment: Alignment.center,child: Text("7")), )
                            ),

                            new Expanded(child:
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border(right: BorderSide(color: Colors.grey[300]))
                              ),
                              height: 60,
                              child:Align(alignment: Alignment.center,child: Text("1")), )
                            ),

                            new Expanded(child:
                            Container(
                              height: 60,
                              color: Colors.grey[100],
                              child:Align(alignment: Alignment.center,child: Text("الفاتحة")), )
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
              decoration: BoxDecoration(
                  color: anWhite,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 3.0,),]
              ),
              child: Column(
                children: <Widget>[
                  new Text(name1 , style: TextStyle(fontSize: 20),),
                  SizedBox(height: 5),
                  new Text(name2 , style: TextStyle(fontSize: 20 ),textAlign: TextAlign.center,),
                  new Divider(),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      GestureDetector( onTap: (){},
                          child: CircleAvatar(child: Icon(Icons.access_alarm),
                            backgroundColor: an1, maxRadius: 30,)
                      ),
                      SizedBox(width: 30),
                      GestureDetector( onTap: (){},
                          child: CircleAvatar(child: Icon(Icons.access_alarm),
                            backgroundColor: anYellow, maxRadius: 30,)
                      )

                    ],
                  )
                ],
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
              decoration: BoxDecoration(
                  color: anWhite,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 3.0,),]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildRow(),
                  SizedBox(height: 10),
                  _buildRow(),
                  SizedBox(height: 10),
                  _buildRow(),
                ],
              ),
            ),

            my_Button(textButton: "مراسلة الطلاب " , onBtnclicked: (){} ,
                horizontal: 10 ,vertical: 10  ,colorButton: an1  , radiusButton: 10 , fontSize: 20 , heightButton: 60)


          ],
        ),




      ),
    );
  }

  Row _buildRow() {
    return new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    new Row(
                      children: <Widget>[
                        new Text("عدد ايات سورة الفاتحة:7"),
                        SizedBox(width: 7),
                        my_IconInContainer(color1: Colors.grey, color2: anWhite ,heightWidth: 18 ,)
                      ],
                    ),


                    new Row(
                      children: <Widget>[
                        new Text("عدد ايات سورة الفاتحة:7"),
                        SizedBox(width: 7),
                        my_IconInContainer(color1: Colors.grey, color2: anWhite ,heightWidth: 18 ,)
                      ],
                    ),

                  ],
                );
  }
}