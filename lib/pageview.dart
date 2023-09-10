import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page_view extends StatefulWidget {
  const page_view({Key? key}) : super(key: key);

  @override
  State<page_view> createState() => _page_viewState();
}

class _page_viewState extends State<page_view> {
  PageController pageController = PageController(
    initialPage: 0,);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Color(0xFF30CFD0),
     Color(0xFF330867),],),),
      child: ColorfulSafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:PageView(
        controller: pageController,
        children: [
        Container(
          child: Text(
          'Car or sport car',
            style: TextStyle(
              fontSize: 20,
            ),),),
       Container(child: Text(
         'Car ot car',
         style: TextStyle(
           fontSize: 20,
         ),),),
       Container(child: Text(
         ' car',
         style: TextStyle(
           fontSize: 20,
         ),),),
        Container(),
          ],

        ),
    ),
    ),
    );
  }
}
