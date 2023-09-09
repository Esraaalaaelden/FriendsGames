import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:
      Scaffold(
          body:Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF30CFD0),
                    Color(0xFF330867),
                    // Color(0xFF30CFD0),
                    //Color(0xFF330867),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
            ),

          )
      ),
    );
  }
}