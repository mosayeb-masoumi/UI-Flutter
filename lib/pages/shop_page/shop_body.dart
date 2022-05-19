
import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/shop_page/components/categories.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.only(left: 10 , top: 10),
            child: Text("woman" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 15),) ,
          ),

          Categories(),

          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context , int index){

                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    );
                  })

          )

        ],
      ),
    );
  }
}
