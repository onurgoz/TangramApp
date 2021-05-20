import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  static const routeName = '/help_page';
  final String whatIsTangram = "What is a TANGRAM?";
  final String tangram =
      "Tangram is a creative intelligence game on the basis of creating various forms by combining seven geometrically shaped pieces made of stone, bone, plastic or wood.";
  final String howDoIPlay = "How do i play";
  final String play =
      "You can level up by placing the pieces given for placement in appropriate places.\nThere are 9 levels, 3 easy, 3 medium and 3 hard.";
  final String goodLuck = "Good luck.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Text(
            whatIsTangram,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            tangram,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            howDoIPlay,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            play,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            goodLuck,
            style: TextStyle(fontSize: 50),
          ),
        ]),
      ),
    );
  }
}
