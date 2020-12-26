import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';

class AddToCart extends StatefulWidget {
  final String name,price,image;

  const AddToCart({Key key, this.name, this.price, this.image}) : super(key: key);
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
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
                Text('Order Details'),
                Icon(Icons.image,color: Colors.transparent,)
              ],
            ),
          )),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text('My Cart',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.black26),
                  child: ClipRRect(borderRadius:BorderRadius.circular(10.0),child: Image.network(widget.image,fit: BoxFit.cover,)),
                ),
                Column(
                  children: [
                    Container(margin:EdgeInsets.only(left: 15.0),width: 200.0,child: Text(widget.name,style: TextStyle(fontWeight: FontWeight.w600,),)),
                    Container(margin:EdgeInsets.only(left: 15.0),width: 200.0,child: Text('{price}(-4.00 Tax)',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black26),)),
                    SizedBox(height: 30.0,),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      width: 200.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),border: Border.all(width: 0.5)),
                            child: Icon(Icons.arrow_back_ios,size: 20.0,color: Colors.grey,),
                          ),
                          SizedBox(width: 20.0,),
                          Text('1',style: TextStyle(fontSize: 18.0,color: Colors.black),),
                          SizedBox(width: 20.0,),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),border: Border.all(width: 0.5)),
                            child: Icon(Icons.arrow_forward_ios,size: 20.0,color: Colors.grey,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,top: 10.0),
            child: Text('Delivery Location',style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.w600,color: Colors.black),),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: greyColor),
                  child: Icon(Icons.location_pin,color: Colors.blue,),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('2 Petre Melikeshvili St.',style: TextStyle(color: Colors.black,fontSize: 15.0,),),
                    ),
                    SizedBox(height: 3.0,),
                    Container(
                      child: Text('0162, Tbilisi.',style: TextStyle(color: Colors.black26,fontSize: 15.0,),),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0,top: 10.0),
            child: Text('Payment Method',style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.w600,color: Colors.black),),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: greyColor),
                  child: Icon(Icons.local_atm_outlined,color: Colors.blue,),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('VISA Classic',style: TextStyle(color: Colors.black,fontSize: 15.0,),),
                    ),
                    SizedBox(height: 3.0,),
                    Container(
                      child: Text('****-0921',style: TextStyle(color: Colors.black26,fontSize: 15.0,),),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15.0,)
              ],
            ),
          ),
        ],
      ),
        bottomNavigationBar: Container(

          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0)
            ),
          ),
          height: 300.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0,),
            Container(margin: EdgeInsets.only(left: 10.0),child: Text('Order Info',style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.w600,color: Colors.black),),),
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin:EdgeInsets.only(left: 10.0),child: Text('SubTotal',style: TextStyle(color: Colors.black26),)),
                Container(margin:EdgeInsets.only(right: 10.0),child: Text(widget.price,style: TextStyle(color: Colors.black),))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(margin:EdgeInsets.only(left: 10.0), child: Text('Shipping Cost',style: TextStyle(color: Colors.black26),)),
                Container(margin:EdgeInsets.only(right: 10.0),child: Text('\$10.0',style: TextStyle(color: Colors.black),))
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(margin:EdgeInsets.only(left: 10.0),child: Text('Total',style: TextStyle(color: Colors.black26),)),
                Container(margin:EdgeInsets.only(right: 10.0),child: Text('\$129.0',style: TextStyle(color: Colors.black,fontSize: 18.0),))
              ],
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(left:10.0,right: 10.0,bottom: 20.0,),
              width: MediaQuery.of(context).size.width-40,
              height: 60.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: secondaryColor),
              child: Center(child: Text('ADD TO CART',style: TextStyle(fontSize: 16.0,color: Colors.white),)),
            ),
          ],
        ),
      )
    );
  }
}
