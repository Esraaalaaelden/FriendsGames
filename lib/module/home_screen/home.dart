import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendsgames/cubit/game_cubit.dart';

import '../2rosty_screen/arosty_rules.dart';
import '../5_10_screen/5_10rules.dart';
import '../lbs_sahbk_screen/labs_sahbk_rules.dart';
import '../password_screen/password_rules.dart';
import '../teams_screen/teams.dart';
import '../who_player_screen/who_rules.dart';
import '../with_out_screen/with-out_rules.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameCubit, GameState>(
  listener: (context, state) {
  },
  builder: (context, state) {
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
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => TeamsPage(),
                                ),
                              );
                            },
                            child: Image(image: AssetImage(
                              'assets/return.png',
                            ),height: 40,width: 40,)),
                      ),
                      Expanded(
                        child: PageView(

                          controller: pageController,
                          children: [
                            Container(
                              //height: 10,width: 10,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => PasswordRules(),
                                    ),
                                  );
                                },
                                child: Image(
                                    image: AssetImage('assets/password.png',)),
                              ),
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => FiveXTenRules(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Image(
                                        image: AssetImage('assets/five-x-ten.png')),

                                  ],
                                ),

                              ),
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>  ArostyRulse(),
                                    ),
                                  );
                                },
                                child: Image(
                                    image: AssetImage('assets/3rosty.png')),
                              ),
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => WithOutRules(),
                                    ),
                                  );
                                },
                                child: Image(
                                    image: AssetImage('assets/without-talking.png')),
                              ),
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>  WhoPlayerRules(),
                                    ),
                                  );
                                },
                                child: Image(
                                    image: AssetImage('assets/guess-the-player.png')),
                              ),
                            ),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>LbsRules(),
                                    ),
                                  );
                                },
                                child: Image(
                                    image: AssetImage('assets/f-your-friend.png')),
                              ),
                            ),

                          ],
                        ),
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
  },
);
  }
}
