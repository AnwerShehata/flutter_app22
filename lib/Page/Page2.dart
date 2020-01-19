import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

class Page2 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page2> {

  TextEditingController NumberPhone = new TextEditingController();

  //انشاء حساب جديد ====
  void onTap(){
    print("onTap");
  }

  //نسيت كلمة المرور ====
  void onTap2(){
    print("onTap");
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        body: Column(
          children: <Widget>[

            new Container(
              height: 250,
              width:MediaQuery.of(context).size.width ,
              color: an1,
              child: Image.asset("assets/imag/logo1.png", scale: 2,),
            ),

            SizedBox(height: 20),
            new Text(" تسجيل الدخول   " ,style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: new Text(" لكي تستطيع استخدام التطبيق لابد من تسجيل الدخول   ",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ),

            my_TextField(
              Radius: 2 , horizontal: 30,vertical: 10 , hintText: " رقم الجوال " , TextInput: TextInputType.number , controllers:NumberPhone
            ),
            InkWell(onTap: (){onTap2();},
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(alignment: Alignment.centerLeft,child: new Text(" نسيت كلمة المرور ؟ "  ,style: TextStyle(color: an1),)),
              ),
            ),

            SizedBox(height: 20),
            my_Button(
                horizontal: 30 , vertical: 10, radiusButton: 20 , heightButton: 60 ,
                textButton: "دخول" , fontSize: 30 , onBtnclicked: (){} , colorButton: an1
            ),


            SizedBox(height: 80),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell( onTap: (){onTap();}, child: new Text(" إنشي حساب الان " , style: TextStyle(color: an1),)),
                SizedBox(width: 20),
                new Text("لا تمتلك حساب ؟ "),
              ],
            )

            


          ],
        ),





      ),
    );
  }
}