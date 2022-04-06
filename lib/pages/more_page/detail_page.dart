
import 'package:flutter/material.dart';
import 'package:ui_nice_test/pages/more_page/detail_page_component/detai_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: DetailBody(context),
    );
  }
}
