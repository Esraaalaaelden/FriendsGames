import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class teams extends StatefulWidget {
  const teams({Key? key}) : super(key: key);

  @override
  State<teams> createState() => _teamsState();
}

class _teamsState extends State<teams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
