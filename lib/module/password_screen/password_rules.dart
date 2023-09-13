import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendsgames/module/password_screen/password.dart';

import '../../shared/components/constants.dart';
import '../home_screen/home.dart';


class PasswordRules extends StatefulWidget {
  const PasswordRules({Key? key}) : super(key: key);

  @override
  State<PasswordRules> createState() => _PasswordRulesState();
}

class _PasswordRulesState extends State<PasswordRules> {
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
                                      builder: (context) => const HomeScreen(),
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
                            'كلمه السر',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ': القوانين',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Text(
                              'ممنوع ذكر اسم اي لاعب أو فريق أو جنسية اللاعب أو رقمه',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              ' يجب ذكر كلمة واحدة فقط في كل مرة و في حالة ذكر أكثر من كلمة يذهب الدور للمنافس ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'متاح 30 ثانية لكل فريق لذكر الدليل و سماع الإجابه',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'يتم لعب 8 جولات و في حالة التعادل يتم لعب جولة فاصلة ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        height: 55,
                        decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              primaryColor,
                              Colors.blue,
                              secondaryColor,
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) =>const PasswordGame(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: const Text(
                            '    Start    ',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
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
  }
}
