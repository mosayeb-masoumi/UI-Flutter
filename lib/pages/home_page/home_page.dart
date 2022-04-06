
import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/home_page/home_components/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(context),
      bottomNavigationBar: buildBottomNavigationBar(),

    );
  }



  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        color: Colors.white,
          icon: Icon(Icons.menu),
          onPressed: (){
          }),
    );
  }
  Container buildBottomNavigationBar() {
    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 15 , right: 15),
      decoration: BoxDecoration(
          color: Colors.green,
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 35,
                color: Colors.greenAccent.withOpacity(0.35)
            )
          ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon:Icon(Icons.home, size: 35, color: Colors.white,) ),
          IconButton(onPressed: (){}, icon:Icon(Icons.linked_camera  , size: 35, color: Colors.white) ),
          IconButton(onPressed: (){}, icon:Icon(Icons.access_alarm, size: 35, color: Colors.white) ),
        ],
      ),
    );
  }


}
