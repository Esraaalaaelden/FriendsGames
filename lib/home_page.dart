import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendsgames/shared/components/components.dart';
import 'package:friendsgames/shared/components/constants.dart';
import 'package:friendsgames/start.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var teamOneController = TextEditingController();
  var teamTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: defaultTextFormField(
                          hintText: 'Team one',
                          controller: teamOneController,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const Image(
                        image: AssetImage('assets/Ellipse 4.png'),
                      ),
                    ],
                  ),
                ),
                const Image(
                  image: AssetImage('assets/Rectangle 6.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Image(
                        image: AssetImage('assets/Ellipse 3.png'),
                      ),
                      Expanded(
                        child: defaultTextFormField(
                          hintText: 'Team two',
                          controller: teamTwoController,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 55,

                  decoration: const BoxDecoration(
                  //    boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //   color: Colors.black,
                  //   blurRadius: 5.0,
                  //   offset: Offset(0.0, 0.20),
                  // ),
                  //   ],

                      gradient: LinearGradient(
                    colors: [primaryColor,Colors.blue,secondaryColor],
                  ),),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ), child: const Text('Start',style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(
                  buttonColor: secondaryColor,
                  onPress: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const StartPage(),
                      ),
                    );
                  },
                  text: 'Start',
                  width: MediaQuery.of(context).size.width * 0.3,
                  fontSize: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
