import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Product (String name, String image, String price){
  return Container(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          width: 200.0,
          height: 150.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.black26,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(image,fit: BoxFit.cover,),
          ),
        ),
        SizedBox(height: 5.0,),
        Container(
           margin: EdgeInsets.only(left: 10.0,right: 10.0),
          child: Text(name,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: 5.0,),
        Container(
          margin: EdgeInsets.only(left: 10.0,right: 10.0),
          child: Text(price,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w300),),
        ),

      ],
    ),
  );
}