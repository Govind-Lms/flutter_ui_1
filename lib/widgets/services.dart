import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Services(String available,String name, String image, String price ){
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200.0,
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(image,fit: BoxFit.cover,),
          ),
        ),
        SizedBox(height: 5.0,),
        Container(margin: EdgeInsets.only(left: 10.0,),
          width: 200.0,
          child: Text(name,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w700),),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
              color: available=='Available'? Color(0xff07B681): Colors.red),
            ),
            Container(margin: EdgeInsets.only(left: 10.0,),

              child: Text(available,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: available=='Available'?Color(0xff07B681) : Colors.red),),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0,right: 10.0),
          child: Text(price,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w300),),
        ),
      ],
    ),
  );
}