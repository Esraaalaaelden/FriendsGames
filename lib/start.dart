import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF30CFD0),
            Color(0xFF330867),
            // Color(0xFF30CFD0),
            //Color(0xFF330867),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              toolbarHeight: 120,
              pinned: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF30CFD0),
                      Color(0xFF330867),
                      // Color(0xFF30CFD0),
                      //Color(0xFF330867),
                    ],
                  ),
                ),
              ),
              title: Image(
                image: AssetImage("assets/Rectangle 2.png"),
                height: 149,
                width: 252,
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([

            ]))
          ],
        ),
      ),
    );
  }
}
