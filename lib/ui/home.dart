import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:flutter_ui/ui/onClick.dart';
import 'package:flutter_ui/widgets/product.dart';
import 'package:flutter_ui/widgets/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Color(0xfff2f2f2),),
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(border:Border.all(width: 1.0,color: Colors.black),borderRadius: BorderRadius.circular(5.0),color: Color(0xfff2f2f2)),
                  child: Icon(Icons.search,color: Colors.black,),
                ),
              ],
            ),
          )),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text('Hi Fi Shop & Services',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 10.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text('Audio shop in Mandalay 66th.\nWe offers both Services and Products',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.normal,color: Colors.black26),),
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              Container(margin: EdgeInsets.only(left: 10.0),child: Text('Services',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0),)),
              Container(margin: EdgeInsets.only(left: 10.0),child: Text('41',style: TextStyle(fontWeight: FontWeight.w600,color:secondaryColor,fontSize: 18.0),)),
              Spacer(),
              Container(margin: EdgeInsets.only(right: 10.0),child: Text('See All',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0,color: secondaryColor),))
            ],
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnClick(
                      name: 'AKG Wireless HeadPhone',
                      price: '\$119.0',
                    )));
                  },
                  child: Product('AKG Wireless HeadPhone','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHBob25lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60','\$119.0')),
                Product('AKG Earbuds','https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHBob25lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60','\$120.0'),
                Product('SAMSUNG Earbuds', 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHBob25lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60','\$200.0'),
              ],
            ),
          ),
          Row(
            children: [
              Container(margin: EdgeInsets.only(left: 10.0),child: Text('Services',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0),)),
              Container(margin: EdgeInsets.only(left: 10.0),child: Text('19',style: TextStyle(fontWeight: FontWeight.w600,color:secondaryColor,fontSize: 18.0),)),
              Spacer(),
              Container(margin: EdgeInsets.only(right: 10.0),child: Text('See All',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0,color: secondaryColor),))
            ],
          ),
          Expanded(
            flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Services('Available','AKG Earphone','','\$49.0'),
                Services('Unavailable','SAMSUNG Wireless Buds','','\$29.0'),
                Services('N/A','AKG Wireless HeadPhone','','\$39.0'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
