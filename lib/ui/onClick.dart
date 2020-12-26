import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:flutter_ui/ui/addToCart.dart';
class OnClick extends StatefulWidget {
  final String name;
  final String price;
  const OnClick({Key key, this.name, this.price}) : super(key: key);

  @override
  _OnClickState createState() => _OnClickState();
}

class _OnClickState extends State<OnClick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2-10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    color: Colors.black26,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Image.network('https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHBob25lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',fit: BoxFit.cover,)
                  ),
                ),
              ),
              Positioned(
                child: SafeArea(child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop(true);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10.0),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xfff2f2f2)),
                          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,top: 10.0),
            child: Row(
              children: [
                Icon(Icons.shopping_cart,color: secondaryColor,),
                SizedBox(width: 5.0,),
                Text('Shopping',style: TextStyle(color: secondaryColor,fontSize: 18.0),),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(widget.name, style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w400),),
              ),
              Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: blueishColor
                ),
                child: Icon(Icons.link,color: secondaryColor,),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              'Hi-Fi Shop & Service Rustaveli Ave 57.\n'
                  'This shop offers both products and services',
              style: TextStyle(fontWeight: FontWeight.w200,fontSize: 15.0,color: Colors.grey[800]),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: greyColor),
                  child: Icon(Icons.location_pin,color: Colors.blue,),
                ),
                SizedBox(width: 20.0,),
                Container(
                  child: Text('Rustaveli Ava 57.\n\n17-001,Batumi',style: TextStyle(color: Colors.grey[600],fontSize: 15.0,),),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20.0,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Divider(
              thickness: 1.0,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin:EdgeInsets.only(left: 10.0,bottom: 10.0),child: Text(widget.price,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500,color: Colors.black),)),
                Container(margin:EdgeInsets.only(left: 10.0,bottom: 20.0),child: Text('Tax Rate 2%- 4.00% (~195.00) ',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w300,color: Colors.grey),)),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddToCart(
            name: widget.name,
            price: widget.price,
            image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHBob25lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
          )));
        },
        child: Container(
          margin: EdgeInsets.only(left:10.0,right: 10.0,bottom: 20.0,),
          width: MediaQuery.of(context).size.width-40,
          height: 60.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: secondaryColor),
          child: Center(child: Text('ADD TO CART',style: TextStyle(fontSize: 16.0,color: Colors.white),)),
        ),
      ),
    );
  }
}
