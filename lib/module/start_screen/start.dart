import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendsgames/cubit/game_cubit.dart';
import 'package:friendsgames/module/teams_screen/teams.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit(),
      child: BlocListener<GameCubit, GameState>(
        listener: (context, state) {},
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => TeamsPage(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
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
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Animate(
                      child: Image(
                        image: AssetImage("assets/sba7o.png"),
                      )
                          .animate()
                          .fade(duration: 2.seconds)
                          .scale(duration: 2.seconds),
                    ),
                    SizedBox(height: 20,),
                    Animate(
                      child: Image(
                        image: AssetImage("assets/Rectangle 2.png"),
                      )
                          .animate()
                          .fade(duration: 2.seconds)
                          .scale(duration: 2.seconds),
                    ),
                    Spacer(),
                    Animate(
                      child: Image(
                        image: AssetImage("assets/Rectangle 3.png"),
                      )
                          .animate()
                          .fade(duration: 2.seconds)
                          .moveX(duration: 2.seconds),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
