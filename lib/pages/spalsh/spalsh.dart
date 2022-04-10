import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/home_page/home_page.dart';
import 'package:ui_nice_test/pages/more_page/detail_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Align(
          alignment: Alignment.center,

          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              RaisedButton(child: Text("ui 1"), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);}),
              SizedBox(
                height:2,
              ),
              RaisedButton(child: Text("ui 2"), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()),);}),
              SizedBox(
                height:2,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
