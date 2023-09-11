import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module/home_screen/home.dart';
import '../shared/components/constants.dart';

class ArostyRulse extends StatefulWidget {
  const ArostyRulse({Key? key}) : super(key: key);

  @override
  State<ArostyRulse> createState() => _ArostyRulseState();
}

class _ArostyRulseState extends State<ArostyRulse> {
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
                            'عروستي بالعكس',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
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
                              height: 6,
                            ),

                            Text(
                              'تتم المزايدة من كل لاعب على قدرة زميله في الفريق على معرفة الاسم بأقل عدد ممكن من الأسئلة , صاحب الرقم الأقل من بين المراهنين هو من سيشارك في الجولة',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'يجيب الحكم على الأسئلة بنعم او لأ فقط حتى في حالة عدم معرفة الاجابة ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'في حالة عدم الوصول الاجابة يسأل الفريق الأخر سؤالين و في حالة عدم الوصول للإجابة تتم المزايدة مجددا',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'يتم لعب ٥ جولات ',
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
                      SizedBox(height: 10,),
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
                          onPressed: (){},
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
