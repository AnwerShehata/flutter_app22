import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

class Page3 extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page3> {

  //========= الرجوع
  void Faunationback(){
    print("Faunationback");
  }

  //========= محفظ===
  void onTap(){
    print("محفظ");
  }


  //========= قاري===
  void onTap1(){
    print("قارئ");
  }


  //========= ولي أمر===
  void onTap2(){
    print("ولي أمر");
  }


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
              child: GestureDetector(onTap: (){Faunationback();},
              child: CircleAvatar(child: Icon(Icons.arrow_forward_ios,color: anGray, ),
              backgroundColor: Colors.black12,)),
            ),
          ],
        ),

        body: ListView(
          children: <Widget>[

            new Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
//              color: an1,
              child: Image.asset("assets/imag/image1.png"),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
              child: new Text(" ساعدنا في تقديم خدمة أفضل لك من خلال أختيارك نوع الحساب سواء كنت محفظ أو قاري آو ولي أمر وتريد متابعة اولادك " ,style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            ) ,

            my_Button(textButton: "محفظ "  , horizontal: 30  ,vertical: 5, radiusButton: 20 , onBtnclicked: (){onTap();}  , colorButton: an1 , fontSize: 20),
            my_Button(textButton: "قارئ "  , horizontal: 30  ,vertical: 5, radiusButton: 20 , onBtnclicked: (){onTap1();}  , colorButton: an1 , fontSize: 20),
            my_Button(textButton: "ولي أمر "  , horizontal: 30  ,vertical: 5, radiusButton: 20 , onBtnclicked: (){onTap2();}  , colorButton: an1 , fontSize: 20),

            SizedBox(height: 150),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(" هل تواجة مشكلة بالتسجيل ؟ "),
                ),
                new CircleAvatar(child: Icon(Icons.priority_high , color: anWhite,), backgroundColor: an1,)
              ],
            )

          ],
        ),




      ),
    );
  }
}