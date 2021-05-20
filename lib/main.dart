import 'package:dndproject/pages/developers.dart';
import 'package:dndproject/pages/home_page.dart';
import 'package:dndproject/pages/level_home_page.dart';
import 'package:dndproject/pages/level_page.dart';

import 'package:flutter/material.dart';

import 'pages/help_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tangram',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: ThemeData.dark(),
      routes: {
        HomePage.routeName: (_) => HomePage(),
        HelpPage.routeName: (_) => HelpPage(),
        LevelHomePage.routeName: (_) => LevelHomePage(),
        LevelPage.routeName: (_) => LevelPage(),
        DeveloperPage.routeName: (_) => DeveloperPage(),
      },
    );
  }
}
