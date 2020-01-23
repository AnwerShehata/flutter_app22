import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/MyWidget.dart';

class Page11 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page11> {


  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            GestureDetector(onTap: (){Navigator.pop(context);},
            child: CircleAvatar(child: Icon(Icons.close ,color: anWhite, size: 20,),
            backgroundColor: an1, maxRadius: 15,)),
            Text("جميع الطلاب" ,textAlign: TextAlign.center,),
          ]),

          content: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: ListView(
              children: <Widget>[
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
                buildContainer4(),
              ],
            ),
          ),
          elevation: 10,
          actions: <Widget>[
          ],
        );
      },
    );
  }



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
          title: Text(" حلقة  تحفيظ القران  "),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(onTap: (){},
                  child: CircleAvatar(child: Icon(Icons.keyboard_arrow_right , color: an1,) , backgroundColor: anWhite,)),
            )
          ],
        ),



        body: ListView(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                  boxShadow: [new BoxShadow(color: Colors.grey.shade200, blurRadius: 4.0,),] ,
                color: anWhite,
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: <Widget>[
                  buildContainer3(),
                  new Divider(),
                  new Text("حلقة التحفيظ تجمع طالب والهدف منها اتمام حفظ القران الكريم ")
                ],
              ),
            ),

            new Container(
              decoration: BoxDecoration(
                boxShadow: [new BoxShadow(color: Colors.grey.shade200, blurRadius: 4.0,),] ,
                color: anWhite,
              ),
              padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: <Widget>[

                  Directionality(textDirection: TextDirection.rtl,
                    child: new Row(
                      children: <Widget>[
                        my_IconInContainer(color1: an1 , color2: anWhite , heightWidth: 20 , ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4 ,vertical: 10),
                          child: new Text("البرنامج التعليمي ", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),

                  my_Button(textButton: " عرض البرنامج التعليمي  " ,radiusButton: 60, colorButton: an1 ,
                  onBtnclicked: (){} , horizontal: 70 , fontSize: 16 , heightButton: 50)
                ],
              ),
            ),

            new Container(
              decoration: BoxDecoration(
                boxShadow: [new BoxShadow(color: Colors.grey.shade200, blurRadius: 4.0,),] ,
                color: anWhite,
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: <Widget>[

                  Directionality(textDirection: TextDirection.rtl,
                    child: new Row(
                      children: <Widget>[
                        my_IconInContainer(color1: an1 , color2: anWhite , heightWidth: 20 , ),
                        PaddingText(name: " الطالب "),
                      ],
                    ),
                  ),

                  Column(
                    children: <Widget>[
                      buildContainer4(),
                      buildContainer4(),
                      buildContainer4(),
                      Container(
                        width: 200,
                        child: my_Button(textButton: "عرض الكل " , onBtnclicked: (){_showDialog();} , horizontal: 20, vertical: 10 ,radiusButton: 50,
                        heightButton: 50 , fontSize: 18, colorButton: an1),
                      )
                    ],
                  )

                ],
              ),
            ),
          ],
        ),





      ),
    );
  }
}