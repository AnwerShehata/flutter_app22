import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';


Widget buildContainer() {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 5 ,vertical: 8),
    padding: EdgeInsets.symmetric(horizontal: 2),
    height: 80,
    decoration: BoxDecoration(
      color: anWhite,
      borderRadius: BorderRadius.circular(10),
        boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 4.0,),],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        InkWell(onTap: (){} , child: new Icon(Icons.more_vert)),


        new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[

            new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 20),
                new Text("75%"),
                new Text("اجمالي الاختبارات"),
              ],),

            SizedBox(width: 20),
            CircleAvatar(minRadius: 20, backgroundColor: an1,),

          ],
        ),

      ],
    ),
  );
}


Widget buildContainer2() {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 3 ,vertical: 8),
    padding: EdgeInsets.symmetric(horizontal: 2),
    height: 100,
    decoration: BoxDecoration(
      color: anWhite,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 4.0,),],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        InkWell(onTap: (){} , child: new Icon(Icons.more_vert)),


        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: new Text("اجمالي الاختبارات"),
                ),
              ],),

            new Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            )

          ],
        ),

      ],
    ),
  );
}



Widget buildContainer3(
    {
      String name1="الشيخ ناصر ",
      String name2="120طالب",
      String name3="2 اختبار",
      String name4="انتهت",
    }
    ) {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
    height: 80,
    decoration: BoxDecoration(
      color: anWhite,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 3.0,),],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[

            new Text("حلقة تحفيظ القران الكريم لسن 10 أعوام"),

            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                SizedBox(width: 7),
                Row(
                  children: <Widget>[
                    new Text(name1 , style: TextStyle(fontSize: 11),),
                    SizedBox(width: 5),
                    new CircleAvatar(maxRadius: 5),
                  ],),


                SizedBox(width: 7),
                Row(
                  children: <Widget>[
                    new Text(name2  , style: TextStyle(fontSize: 11),),
                    SizedBox(width: 5),
                    new Icon(Icons.ac_unit ,size: 17,),
                  ],),


                SizedBox(width: 7),
                Row(
                  children: <Widget>[
                    new Text(name3  , style: TextStyle(fontSize: 11),),
                    SizedBox(width:5),
                    new Icon(Icons.access_alarms ,size: 17,),
                  ],),


                SizedBox(width: 7),
                Row(
                  children: <Widget>[
                    new Text(name4  , style: TextStyle(fontSize: 11),),
                    SizedBox(width: 5),
                    new Icon(Icons.accessibility ,size: 17,),
                  ],),



              ],)

          ],
        ),

        new CircleAvatar(backgroundColor: an1, minRadius: 25, child: Icon(Icons.email ),),

      ],
    ),
  );
}




Widget buildContainer4() {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 3 ,vertical: 2),
    padding: EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(onTap: (){} , child: new Icon(Icons.more_vert)),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 20),
                new Text("انور شحاتة عبد الزاهر " , style: TextStyle(fontSize: 16),),
                new Text("رقم الطالب " , style: TextStyle(fontSize: 12),),
              ],),
            SizedBox(width: 20),
            CircleAvatar(minRadius: 25, backgroundColor: an1,),
          ],
        ),
      ],
    ),
  );
}


Padding PaddingText({
  String name = "اسم العنوان ",
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: new Text(name , style: TextStyle(fontSize: 20),),
  );
}



Widget buildContainer5({
  String nameMes = 'رسالة ادارية' ,
  String textMes = ' طقم ليقينز مدرز متباين مع هودي جرافيك عبارة طقم ليقينز مدرز متباين مع هوطقم ليقينز' ,
}) {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 6),
    padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 1),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100]
    ),
    child: Row(
      children: <Widget>[

        new Expanded(flex: 3,
          child:  new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Text(nameMes ,style: TextStyle(fontSize: 18),),
              new Text(textMes,style: TextStyle(color: Colors.grey , fontSize: 10) , textAlign: TextAlign.end,),
              Align(alignment: Alignment.bottomLeft,child: new Text("05:55 AM " , style: TextStyle(color: Colors.grey),)),
            ],
          ),),

        new Expanded(flex: 1,
          child:new CircleAvatar(child: Icon(Icons.notifications ,size: 30, color: anWhite,), minRadius: 28, backgroundColor: an1),
        ),

      ],
    ),
  );
}



Widget buildContainer6({
  String nameMes = 'رسالة ادارية' ,
  String textMes = ' طقم ليقينز مدرز متباين مع هودي جرافيك عبارة طقم ليقينز مدرز متباين مع هوطقم ليقينز' ,
}) {
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 6),
    padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 1),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100]
    ),
    child: Row(
      children: <Widget>[

        new Expanded(flex: 3,
          child:  new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Text(nameMes ,style: TextStyle(fontSize: 18),),
              new Text(textMes,style: TextStyle(color: Colors.grey , fontSize: 10) , textAlign: TextAlign.end,),
              Align(alignment: Alignment.bottomLeft,child: new Text("05:55 AM " , style: TextStyle(color: Colors.grey),)),
            ],
          ),),

        new Expanded(flex: 1,
          child:Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.pexels.com/photos/3552544/pexels-photo-3552544.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"))
              ),
            ),
          )
        ),
      ],
    ),
  );
}




