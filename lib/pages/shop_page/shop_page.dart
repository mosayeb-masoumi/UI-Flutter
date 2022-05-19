
import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/shop_page/shop_body.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back , color: Colors.black,)),


        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.email, color: Colors.black,)),

          IconButton(
              onPressed: (){},
              icon: Icon(Icons.stream, color: Colors.black,)),

          SizedBox(width: 10,)
        ],

      ),

      body: ShopBody(),


    );
  }


}


