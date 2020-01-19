import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

class Page4 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        backgroundColor: anWhite,


        appBar: AppBar(
          title: Text(" التسجيل  " , style: TextStyle(color: anGrayText),),
          elevation: 0,
          backgroundColor: anWhite,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(child: Icon(Icons.arrow_forward_ios,color: anGray, ), backgroundColor: Colors.black12,),
            ),
          ],
        ),

        body: ListView(
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40 ,vertical: 40),
              child: new Text("لتتمكن من التسجيل كمحفظ قم بملى البيانات المطلوبة أدناة" ,style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            ),

            my_TextField(
                Radius: 30 , horizontal: 30,vertical: 10 , hintText: "الاسم ثلاثي " ,
                TextInput: TextInputType.number , textAlign: TextAlign.end ),


            my_TextField(
                Radius: 30 , horizontal: 30,vertical: 10 , hintText: " رقم الجوال " ,
                TextInput: TextInputType.number , textAlign: TextAlign.end),


            my_TextField(
                Radius: 30 , horizontal: 30,vertical: 10 , hintText: " البريد الالكتروني " ,
                TextInput: TextInputType.number , textAlign: TextAlign.end),


            my_TextField(
                Radius: 30 , horizontal: 30,vertical: 10 , hintText: "كلمة المرور " ,
                TextInput: TextInputType.number , textAlign: TextAlign.end),

            my_Button(horizontal: 30 ,vertical: 30, textButton: "إنشاء حساب" , onBtnclicked: (){} , colorButton: an1 , radiusButton: 30 ,heightButton: 60 , fontSize: 20)
          ],
        ),





      ),
    );
  }
}