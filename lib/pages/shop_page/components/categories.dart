import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewelleries", "Foot Wear", "Dresses"];

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {

              return GestureDetector(

                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(categories[index] , style: TextStyle( color: index == selectedIndex ? Colors.black : Colors.black12,fontWeight: FontWeight.bold),),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 30,
                        height: 2,
                        color: index == selectedIndex ? Colors.black : Colors.transparent,
                      )

                    ],
                  ),
                ),

                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },

              );
            }),
      ),
    );
  }
}
