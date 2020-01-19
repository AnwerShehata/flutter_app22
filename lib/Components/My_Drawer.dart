import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';


class My_Drawer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Drawer> {

  String imageUser = 'https://images.pexels.com/photos/2947929/pexels-photo-2947929.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500' ;
  double fontSize = 16 ;
  double iconSize = 23 ;




  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Directionality(textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[


            new Container(
              padding: EdgeInsets.only(top: 70),
              height: 250,
              color: anRed,
              child: Column(
                children: <Widget>[
                  //-------------------- صورة المستخدم  ---------------
                  my_ImageCircleAccount(imagURL: imageUser ,width: 70 , borderColor: anWhite ,borderWidth: 1),
                  //-------------------- بيانات المستخدم الاسم والوظيفة   ---------------
                  new Text("الشيخ ناصر  " , style: TextStyle(fontSize: 20 ,color: anWhite),),
               Text("User 123" , style: TextStyle(fontSize: 15 ,color: anWhite)),
                ],
              ),
            ),

            new Divider(),
            new Row(
              children: <Widget>[

                new Row(
                  children: <Widget>[
                  new Icon(Icons.settings),
                  new Text(" إعدادات الحساب  ") ,
                ],),


                new Row(
                  children: <Widget>[
                  new Icon(Icons.settings),
                  new Text(" الابلاغ عن مشكلة ") ,
                ],),

              ],
            ),

            new Divider(),

            ListTile(
              title: Text('الاختبارات ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

            ListTile(
              title: Text('شروط الاستخدام  ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

            ListTile(
              title: Text('تواصل معنا  ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

            ListTile(
              title: Text('تسجيل الخروج ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.local_airport),
              onTap: () {},
            ),


          ],
        ),
      ),
    );
  }
}