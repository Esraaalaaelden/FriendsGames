import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module/home_screen/home.dart';
import '5_10rules.dart';

class FiveGame extends StatefulWidget {
  const FiveGame({Key? key}) : super(key: key);

  @override
  State<FiveGame> createState() => _FiveGameState();
}

class _FiveGameState extends State<FiveGame> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF30CFD0),
            Color(0xFF330867),
          ],
        ),
      ),
      child: ColorfulSafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF30CFD0),
                  Color(0xFF330867),
                  // Color(0xFF30CFD0),
                  //Color(0xFF330867),
                ],
              ),
            ),
            child: ColorfulSafeArea(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) =>
                  <Widget>[
                    SliverAppBar(
                      elevation: 20,
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      toolbarHeight: 130,
                      pinned: true,
                      stretch: false,
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF30CFD0),
                              Color(0xFF330867),
                              // Color(0xFF30CFD0),
                              //Color(0xFF330867),
                            ],
                          ),
                        ),
                      ),
                      title: const Image(
                        image: AssetImage("assets/Rectangle 2.png"),
                        height: 149,
                        width: 252,
                      ),
                    )
                  ],
                  body:
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const Rulse(),
                                    ),
                                  );
                                },
                                child: const Image(
                                  image: AssetImage(
                                    'assets/return.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                )),
                          ),

                          const Text(
                            ' 5 x 10 ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                  );
                                },
                                child: const Image(
                                  image: AssetImage(
                                    'assets/ion_home.png',
                                  ),
                                  height: 47,
                                  width: 60,
                                )),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
                bottomNavigationBar: const Image(
                  image: AssetImage('assets/Rectangle 3.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

