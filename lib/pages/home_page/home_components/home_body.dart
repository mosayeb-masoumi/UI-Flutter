import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/more_page/detail_page.dart';

class HomeBody extends StatelessWidget {

   HomeBody(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // it enable scrolling in small size devices
    return SingleChildScrollView(
      child: Column(
        children: [
          buildHeaderWithSearchBoxContainer(size),
          buildTitleWithMoreButton("more" , context),
          SizedBox(height: 30,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
              ],
            ),
          ),

          SizedBox(height: 30,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
                buildCardView(size),
              ],
            ),
          ),
          SizedBox(height: 30,),


        ],
      ),
    );
  }


  Container buildHeaderWithSearchBoxContainer(Size size) {
    return Container(
      height: size.height * 0.2,
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(left: 20, right: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.green.withOpacity(0.35),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Serach",
                    hintStyle: TextStyle(color: Colors.green.withOpacity(0.5)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Container buildTitleWithMoreButton(String btnText, BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Text(
              "Recommend",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            Spacer(),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.green,
              child: Text(
                btnText,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()),);
              },
            )
          ],
        ));
  }
  Container buildCardView(Size size) {
    return Container(
      width: size.width * 0.4,
      height: size.height *0.3,

      margin: EdgeInsets.only(left: 10 , right: 10),
      padding: EdgeInsets.only(top: 10 , bottom: 10),

      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),

      ),
    );
  }

}
