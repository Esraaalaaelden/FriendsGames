import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendsgames/countdown_cubit/countdown_cubit.dart';
import 'package:friendsgames/module/with_out_screen/with-out_rules.dart';

import '../../cubit/game_cubit.dart';
import '../../shared/components/constants.dart';
import '../home_screen/home.dart';

class WithoutTalking extends StatefulWidget {
  WithoutTalking({Key? key}) : super(key: key);

  @override
  State<WithoutTalking> createState() => _WithoutTalkingState();
}

class _WithoutTalkingState extends State<WithoutTalking> {
  @override
  Widget build(BuildContext context) {
    var cubit = GameCubit.get(context);

    final countdownCubit = context.read<CountdownCubit>();
    return BlocConsumer<GameCubit, GameState>(
      listener: (context, state) {},
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
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      cubit.fTeamPoints = 0;
                                      cubit.sTeamPoints = 0;
                                      cubit.currentQuestionIndex = -1;
                                      cubit.isButtonDisabled = false;

                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const WithOutRules(),
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
                                ' بدون كلام ',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const HomeScreen(),
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
                          const SizedBox(
                            height: 30,
                          ),
                          if (cubit.currentQuestionIndex == -1)
                            const Text(
                              'Press the button to get a random question',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          else
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      cubit.withoutTalking[
                                      cubit.currentQuestionIndex],
                                      style: const TextStyle(fontSize: 18.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(height: 170),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Animate(
                                child: const Icon(
                                  Icons.hourglass_bottom,
                                  color: Colors.white,
                                )
                                    .animate(delay: 2.seconds,
                                    onPlay: (controller) =>
                                        controller.repeat())
                                    .rotate(duration: 3.seconds),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BlocBuilder<CountdownCubit, int>(
                                builder: (context, countdown) {
                                  return Text(
                                    '$countdown',
                                    style: const TextStyle(
                                        fontSize: 20.0, color: Colors.white),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  cubit.sTeamPointPlus();
                                },
                                child:  const Image(
                                  image: AssetImage('assets/Ellipse 3.png'),
                                ),
                              ),
                              Text(
                                '${cubit.sTeamPoints}',
                                style: const TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 55,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      primaryColor,
                                      Colors.blue,
                                      secondaryColor,
                                    ],
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: cubit.isButtonDisabled
                                      ? null // Disable the button if isButtonDisabled is true
                                      :() {
                                    cubit.withoutTalkingChangeQuestion();
                                    countdownCubit.startCountdown(45);
                                    cubit.isButtonDisabled = true;

                                    Future.delayed(const Duration(seconds: 45), () {
                                      setState(() {
                                        cubit.isButtonDisabled = false; // Enable the button
                                      });
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    cubit.currentQuestionIndex == -1
                                        ? 'Get  Question'
                                        : '     Next     ',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${cubit.fTeamPoints}',
                                style: const TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 5,
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  cubit.fTeamPointPlus();
                                },
                                child: const Image(
                                  image: AssetImage('assets/Ellipse 4.png'),
                                ),
                              ),
                            ],
                          ),
                          // ElevatedButton(
                          //   onPressed: cubit.fiveXTenChangeQuestion,
                          //   child: Text('Get Random Question'),
                          // ),
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
