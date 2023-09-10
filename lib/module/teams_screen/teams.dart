import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendsgames/shared/components/components.dart';
import 'package:friendsgames/shared/components/constants.dart';
import 'package:friendsgames/module/start_screen/start.dart';

class TeamsPage extends StatefulWidget {
  TeamsPage({Key? key}) : super(key: key);

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}
//spaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaace

class _TeamsPageState extends State<TeamsPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: defaultTextFormField(
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'you must type team one name!';
                                }
                                return null;
                              },
                              hintText: 'Team One',
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
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'you must type team two name!';
                                }
                                return null;
                              },
                              hintText: 'Team Two',
                              controller: teamTwoController,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
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
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const StartPage(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text(
                          'Start',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Image(
            image: AssetImage('assets/Rectangle 3.png'),
          ),
        ),
      ),
    );
  }
}
